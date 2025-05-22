
import 'dart:io';
import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dental_guard_flutter/core/utils/permission_manager.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';

import 'app_toast.dart';

class FileManager {
  FileManager._internal();
  static final FileManager instance = FileManager._internal();

  bool isImageFile(String filePath) {
    final imageExtensions = ['.jpg', '.jpeg', '.png', '.gif', '.bmp', '.webp', '.heic', '.heif', '.tiff'];

    // 將 filePath 轉換為小寫，確保判斷時不區分大小寫
    final lowerCaseFilePath = filePath.toLowerCase();

    // 檢查文件路徑是否以任何圖片擴展名結尾
    return imageExtensions.any((extension) => lowerCaseFilePath.endsWith(extension));
  }

  bool isVideoFile(String filePath) {
    final videoExtensions = ['.mp4', '.mov', '.avi', '.wmv', '.flv', '.mkv', '.webm', '.m4v'];

    // 將 filePath 轉換為小寫，確保判斷時不區分大小寫
    final lowerCaseFilePath = filePath.toLowerCase();

    // 檢查文件路徑是否以任何影片擴展名結尾
    return videoExtensions.any((extension) => lowerCaseFilePath.endsWith(extension));
  }

  // 選擇多媒體文件
  Future<List<File>> pickMedia({
    required BuildContext context,
    double? sizeLimitMB,
    int fileLimit = 1,
    FileType fileType = FileType.media,
  }) async {
    // 檢查存儲權限
    bool hasPermission = await checkStoragePermission(context);
    if (!hasPermission) {
      // 如果權限未授予，則返回空列表
      AppToast.showToast(message: AppStrings.storagePermissionDenied);
      return [];
    }

    bool allowMultiple = fileLimit > 1;

    final result = await FilePicker.platform.pickFiles(
      type: fileType,
      allowMultiple: allowMultiple,
    );

    if (result != null && result.files.isNotEmpty) {
      final selectedFiles = result.files.where((file) {
        if (sizeLimitMB != null) {
          double fileSizeMB = file.size / (1024 * 1024);
          return fileSizeMB <= sizeLimitMB;
        }
        return true;
      }).toList();

      if (selectedFiles.length > fileLimit) {
        selectedFiles.removeRange(fileLimit, selectedFiles.length);
        AppToast.showToast(message: AppStrings.selectionsExceedsLimit);
      }

      return selectedFiles.map((file) => File(file.path!)).toList();
    }

    return [];
  }

  Future<bool> deleteImageFromNotesDirectory(String imagePath) async {
    try {
      final file = File(imagePath);
      if (await file.exists()) {
        await file.delete();
        print("Deleted file at: $imagePath");
        return true;
      }
      return false;
    } catch (e) {
      print("Error deleting file at $imagePath: $e");
      return false;
    }
  }
}

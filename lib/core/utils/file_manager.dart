import 'dart:io';
import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dental_guard_flutter/core/utils/permission_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

import 'app_toast.dart';

class FileManager {
  FileManager._internal();
  static final FileManager instance = FileManager._internal();
  static const _nativeFilePickerChannel = MethodChannel('native_file_picker');

  Future<List<File>> pickMedia({
    required BuildContext context,
    double? sizeLimitMB,
    int fileLimit = 1,
  }) async {
    bool hasPermission = await checkStoragePermission(context);
    if (!hasPermission) {
      AppToast.showToast(message: AppStrings.storagePermissionDenied);
      return [];
    }

    try {
      bool allowMultiple = fileLimit > 1;
      // 使用原生相簿選擇器
      final result = await _nativeFilePickerChannel.invokeMethod('pickImageFromGallery', {
        'allowMultiple': allowMultiple,
      });

      if (result == null) {
        print("User cancelled file selection");
        return [];
      }

      // 處理返回的文件列表
      final List<dynamic> fileInfoList = List<dynamic>.from(result);
      print("Selected ${fileInfoList.length} files");

      List<File> finalFiles = [];

      for (int i = 0; i < fileInfoList.length && i < fileLimit; i++) {
        final Map<String, dynamic> fileInfo = Map<String, dynamic>.from(fileInfoList[i]);
        final String uri = fileInfo['uri'];
        final String fileName = fileInfo['name'];
        final int fileSize = fileInfo['size'];

        print("Processing file ${i + 1}: $fileName");
        print("URI: $uri");
        print("Size: $fileSize bytes");

        // 檢查文件大小限制
        if (sizeLimitMB != null) {
          double fileSizeMB = fileSize / (1024 * 1024);
          if (fileSizeMB > sizeLimitMB) {
            print("File $fileName exceeds size limit, skipping");
            continue;
          }
        }

        // 複製文件到應用的暫存目錄
        final tempDir = await getTemporaryDirectory();
        final targetPath = '${tempDir.path}/$fileName';

        print("Copying file to: $targetPath");
        try {
          final String? copiedPath = await _nativeFilePickerChannel.invokeMethod('copyUriToFile', {
            'uri': uri,
            'targetPath': targetPath,
          });

          if (copiedPath != null) {
            final copiedFile = File(copiedPath);
            finalFiles.add(copiedFile);
          }
        } catch (e) {
          print("Error copying file $fileName: $e");
        }
      }

      // 檢查是否超過文件限制
      if (fileInfoList.length > fileLimit) {
        AppToast.showToast(message: AppStrings.selectionsExceedsLimit);
      }

      return finalFiles;

    } catch (e) {
      print("Error in native gallery picker: $e");
      AppToast.showToast(message: "Error selecting file: $e");
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
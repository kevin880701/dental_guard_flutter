import 'dart:io';
import 'package:dental_guard_flutter/utils/ToastHelper.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as img;

Future<List<File>> pickMedia({
  required BuildContext context,
  double? sizeLimitMB,
  int fileLimit = 1,
  FileType fileType = FileType.media,
}) async {
  // 設定是否允許多選，根據 fileLimit 決定
  bool allowMultiple = fileLimit > 1;

  // 調用 FilePicker 選擇文件
  final result = await FilePicker.platform.pickFiles(
    type: fileType,
    allowMultiple: allowMultiple,
  );

  if (result != null && result.files.isNotEmpty) {
    // 過濾符合大小限制的文件
    final selectedFiles = result.files.where((file) {
      if (sizeLimitMB != null) {
        // 將大小從位元組轉換為 MB 進行比較
        double fileSizeMB = file.size / (1024 * 1024);
        return fileSizeMB <= sizeLimitMB;
      }
      return true;
    }).toList();

    // 數量限制
    if (fileLimit != null && selectedFiles.length > fileLimit) {
      selectedFiles.removeRange(fileLimit, selectedFiles.length);
      showErrorToast(context: context, text: '選擇數量超過上限！');
    }

    // 返回符合條件的檔案列表
    return selectedFiles
        .map((file) => File(file.path!)) // 將路徑轉換為 File 對象
        .toList();
  }

  // 如果沒有選擇文件，返回空列表
  return [];
}

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

Future<File?> capturePhoto({required BuildContext context}) async {
  final ImagePicker _picker = ImagePicker();

  try {
    // 調用相機拍照
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);

    if (photo != null) {
      // 返回拍攝的圖片文件
      return File(photo.path);
    } else {
      // 用戶取消了拍照
      showErrorToast(context: context, text: '拍照取消');
      return null;
    }
  } catch (e) {
    // 捕獲拍照錯誤並顯示提示
    showErrorToast(context: context, text: '拍照失敗: $e');
    return null;
  }
}

Future<File> compressImage(File file, {int targetSize = 100000}) async {
  final bytes = await file.readAsBytes();
  final image = img.decodeImage(bytes);
  if (image == null) {
    return file; // 如果無法解碼圖片，返回原始文件
  }

  int quality = 85;
  List<int> compressedImage = img.encodeJpg(image, quality: quality);

  // 逐步降低質量，直到壓縮後的大小低於 targetSize
  while (compressedImage.length > targetSize && quality > 10) {
    quality -= 5;
    compressedImage = img.encodeJpg(image, quality: quality);
  }

  // 保存壓縮後的圖片
  final compressedFile = File(file.path.replaceAll('.jpg', '_compressed.jpg'));
  await compressedFile.writeAsBytes(compressedImage);
  return compressedFile;
}
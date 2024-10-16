import 'package:permission_handler/permission_handler.dart';

class PermissionManager {
  // 檢查相機權限
  Future<bool> checkCameraPermission() async {
    PermissionStatus status = await Permission.camera.status;
    if (status.isDenied || status.isRestricted) {
      return await _requestPermission(Permission.camera);
    }
    return status.isGranted;
  }

  // 檢查存儲權限
  Future<bool> checkStoragePermission() async {
    PermissionStatus status = await Permission.storage.status;
    if (status.isDenied || status.isRestricted) {
      return await _requestPermission(Permission.storage);
    }
    return status.isGranted;
  }

  // 檢查位置權限
  Future<bool> checkLocationPermission() async {
    PermissionStatus status = await Permission.location.status;
    if (status.isDenied || status.isRestricted) {
      return await _requestPermission(Permission.location);
    }
    return status.isGranted;
  }

  // 檢查麥克風權限
  Future<bool> checkMicrophonePermission() async {
    PermissionStatus status = await Permission.microphone.status;
    if (status.isDenied || status.isRestricted) {
      return await _requestPermission(Permission.microphone);
    }
    return status.isGranted;
  }

  // 私有函數：請求權限
  Future<bool> _requestPermission(Permission permission) async {
    final status = await permission.request();
    return status.isGranted;
  }

  // 檢查是否已獲得所有權限
  Future<bool> checkAllPermissions(List<Permission> permissions) async {
    bool allGranted = true;
    for (var permission in permissions) {
      if (!await permission.isGranted) {
        allGranted = false;
        break;
      }
    }
    return allGranted;
  }

  // 打開應用程序設置
  Future<void> openAppSettings() async {
    await openAppSettings();
  }
}

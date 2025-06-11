import 'package:dental_guard_flutter/core/utils/app_log.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../features/system/application/system_usecases_provider.dart';
import '../../features/system/data/models/response/app_info_data/app_info_data.dart';
import '../utils/utils.dart';

class VersionInfoState {
  final String debugVersion;
  final String releaseVersion;
  final AppInfoData? appInfo;

  VersionInfoState({
    this.debugVersion = "",
    this.releaseVersion = "",
    this.appInfo,
  });

  VersionInfoState copyWith({
    String? debugVersion,
    String? releaseVersion,
    AppInfoData? appInfo,
  }) {
    return VersionInfoState(
      debugVersion: debugVersion ?? this.debugVersion,
      releaseVersion: releaseVersion ?? this.releaseVersion,
      appInfo: appInfo ?? this.appInfo,
    );
  }
}

final versionInfoProvider =
    StateNotifierProvider<VersionInfoNotifier, VersionInfoState>((ref) {
  return VersionInfoNotifier(ref);
});

class VersionInfoNotifier extends StateNotifier<VersionInfoState> {
  VersionInfoNotifier(this.ref) : super(VersionInfoState());

  final Ref ref;

  void setAppInfo(AppInfoData? appInfo) {
    state = state.copyWith(appInfo: appInfo);
  }

  Future<bool> loadVersionInfo() async {
    try {
      final getAppInfoUseCase = ref.read(getAppInfoUseCaseProvider);
      final packageInfo = await PackageInfo.fromPlatform();

      final appInfo = await getAppInfoUseCase(
        packageName: packageInfo.packageName,
        platform: getCurrentPlatform(),
      );

      state = state.copyWith(
        debugVersion: '${packageInfo.version} (${packageInfo.buildNumber})',
        releaseVersion: packageInfo.version,
        appInfo: appInfo,
      );

      if (appInfo == null) return false;
      return true;
    } catch (e, st) {
      AppLog.e("Error:$e");
      final packageInfo = await PackageInfo.fromPlatform();
      state = state.copyWith(
        debugVersion: '${packageInfo.version} (${packageInfo.buildNumber})',
        releaseVersion: packageInfo.version,
        appInfo: null,
      );
      return false;
    }
  }

}

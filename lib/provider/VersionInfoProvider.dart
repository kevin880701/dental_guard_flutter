import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

class VersionInfoState {
  final String debugVersion;
  final String releaseVersion;

  VersionInfoState({
    this.debugVersion = "",
    this.releaseVersion = "",
  });

  VersionInfoState copyWith({
    String? debugVersion,
    String? releaseVersion,
  }) {
    return VersionInfoState(
      debugVersion: debugVersion ?? this.debugVersion,
      releaseVersion: releaseVersion ?? this.releaseVersion,
    );
  }
}

final versionInfoProvider = StateNotifierProvider<
    VersionInfoNotifier,
    VersionInfoState>((ref) {
  return VersionInfoNotifier();
});

class VersionInfoNotifier extends StateNotifier<VersionInfoState> {
  VersionInfoNotifier() : super(VersionInfoState());

  Future<void> loadVersionInfo() async {
    final packageInfo = await PackageInfo.fromPlatform();
    state = state.copyWith(
        debugVersion: '${packageInfo.version} (${packageInfo.buildNumber})',
        releaseVersion: packageInfo.version);
  }
}

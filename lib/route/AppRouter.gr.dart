// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:dental_guard_flutter/screen/LaunchPage.dart' as _i4;
import 'package:dental_guard_flutter/screen/login/LoginPage.dart' as _i5;
import 'package:dental_guard_flutter/screen/login/SetAccountPage.dart' as _i8;
import 'package:dental_guard_flutter/screen/login/SetPasswordPage.dart' as _i9;
import 'package:dental_guard_flutter/screen/login/SetUserInfoPage.dart' as _i10;
import 'package:dental_guard_flutter/screen/main/detectImage/DetectImagePage.dart'
    as _i1;
import 'package:dental_guard_flutter/screen/main/imageDetect/ImageDetectPage.dart'
    as _i3;
import 'package:dental_guard_flutter/screen/main/MainPage.dart' as _i6;
import 'package:dental_guard_flutter/screen/main/originalImage/OriginalImagePage.dart'
    as _i7;
import 'package:dental_guard_flutter/screen/main/setting/editUserInformation/EditUserInformationPage.dart'
    as _i2;
import 'package:dental_guard_flutter/screen/main/setting/setting/SettingPage.dart'
    as _i11;
import 'package:dental_guard_flutter/screen/main/setting/userInfo/UserInfoPage.dart'
    as _i14;
import 'package:dental_guard_flutter/screen/main/studentInfo/StudentInfoPage.dart'
    as _i12;
import 'package:dental_guard_flutter/screen/main/studentList/StudentListPage.dart'
    as _i13;
import 'package:flutter/material.dart' as _i16;

/// generated route for
/// [_i1.DetectImagePage]
class DetectImageRoute extends _i15.PageRouteInfo<void> {
  const DetectImageRoute({List<_i15.PageRouteInfo>? children})
      : super(
          DetectImageRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetectImageRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i1.DetectImagePage();
    },
  );
}

/// generated route for
/// [_i2.EditUserInformationPage]
class EditUserInformationRoute extends _i15.PageRouteInfo<void> {
  const EditUserInformationRoute({List<_i15.PageRouteInfo>? children})
      : super(
          EditUserInformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditUserInformationRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i2.EditUserInformationPage();
    },
  );
}

/// generated route for
/// [_i3.ImageDetectPage]
class ImageDetectRoute extends _i15.PageRouteInfo<void> {
  const ImageDetectRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ImageDetectRoute.name,
          initialChildren: children,
        );

  static const String name = 'ImageDetectRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i3.ImageDetectPage();
    },
  );
}

/// generated route for
/// [_i4.LaunchPage]
class LaunchRoute extends _i15.PageRouteInfo<void> {
  const LaunchRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LaunchRoute.name,
          initialChildren: children,
        );

  static const String name = 'LaunchRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i4.LaunchPage();
    },
  );
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i15.PageRouteInfo<void> {
  const LoginRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i5.LoginPage();
    },
  );
}

/// generated route for
/// [_i6.MainPage]
class MainRoute extends _i15.PageRouteInfo<void> {
  const MainRoute({List<_i15.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i6.MainPage();
    },
  );
}

/// generated route for
/// [_i7.OriginalImagePage]
class OriginalImageRoute extends _i15.PageRouteInfo<void> {
  const OriginalImageRoute({List<_i15.PageRouteInfo>? children})
      : super(
          OriginalImageRoute.name,
          initialChildren: children,
        );

  static const String name = 'OriginalImageRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i7.OriginalImagePage();
    },
  );
}

/// generated route for
/// [_i8.SetAccountPage]
class SetAccountRoute extends _i15.PageRouteInfo<void> {
  const SetAccountRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SetAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'SetAccountRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i8.SetAccountPage();
    },
  );
}

/// generated route for
/// [_i9.SetPasswordPage]
class SetPasswordRoute extends _i15.PageRouteInfo<SetPasswordRouteArgs> {
  SetPasswordRoute({
    _i16.Key? key,
    required String account,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          SetPasswordRoute.name,
          args: SetPasswordRouteArgs(
            key: key,
            account: account,
          ),
          initialChildren: children,
        );

  static const String name = 'SetPasswordRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SetPasswordRouteArgs>();
      return _i9.SetPasswordPage(
        key: args.key,
        account: args.account,
      );
    },
  );
}

class SetPasswordRouteArgs {
  const SetPasswordRouteArgs({
    this.key,
    required this.account,
  });

  final _i16.Key? key;

  final String account;

  @override
  String toString() {
    return 'SetPasswordRouteArgs{key: $key, account: $account}';
  }
}

/// generated route for
/// [_i10.SetUserInfoPage]
class SetUserInfoRoute extends _i15.PageRouteInfo<SetUserInfoRouteArgs> {
  SetUserInfoRoute({
    _i16.Key? key,
    required String account,
    required String password,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          SetUserInfoRoute.name,
          args: SetUserInfoRouteArgs(
            key: key,
            account: account,
            password: password,
          ),
          initialChildren: children,
        );

  static const String name = 'SetUserInfoRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SetUserInfoRouteArgs>();
      return _i10.SetUserInfoPage(
        key: args.key,
        account: args.account,
        password: args.password,
      );
    },
  );
}

class SetUserInfoRouteArgs {
  const SetUserInfoRouteArgs({
    this.key,
    required this.account,
    required this.password,
  });

  final _i16.Key? key;

  final String account;

  final String password;

  @override
  String toString() {
    return 'SetUserInfoRouteArgs{key: $key, account: $account, password: $password}';
  }
}

/// generated route for
/// [_i11.SettingPage]
class SettingRoute extends _i15.PageRouteInfo<void> {
  const SettingRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i11.SettingPage();
    },
  );
}

/// generated route for
/// [_i12.StudentInfoPage]
class StudentInfoRoute extends _i15.PageRouteInfo<void> {
  const StudentInfoRoute({List<_i15.PageRouteInfo>? children})
      : super(
          StudentInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'StudentInfoRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i12.StudentInfoPage();
    },
  );
}

/// generated route for
/// [_i13.StudentListPage]
class StudentListRoute extends _i15.PageRouteInfo<void> {
  const StudentListRoute({List<_i15.PageRouteInfo>? children})
      : super(
          StudentListRoute.name,
          initialChildren: children,
        );

  static const String name = 'StudentListRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i13.StudentListPage();
    },
  );
}

/// generated route for
/// [_i14.UserInfoPage]
class UserInfoRoute extends _i15.PageRouteInfo<void> {
  const UserInfoRoute({List<_i15.PageRouteInfo>? children})
      : super(
          UserInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserInfoRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i14.UserInfoPage();
    },
  );
}

// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:dental_guard_flutter/data/response/studentList/StudentListResponse.dart'
    as _i19;
import 'package:dental_guard_flutter/data/response/teethRecords/TeethRecordsResponse.dart'
    as _i18;
import 'package:dental_guard_flutter/screen/LaunchPage.dart' as _i6;
import 'package:dental_guard_flutter/screen/login/LoginPage.dart' as _i7;
import 'package:dental_guard_flutter/screen/login/SetAccountPage.dart' as _i9;
import 'package:dental_guard_flutter/screen/login/SetPasswordPage.dart' as _i10;
import 'package:dental_guard_flutter/screen/login/SetUserInfoPage.dart' as _i11;
import 'package:dental_guard_flutter/screen/main/addClass/AddClassPage.dart'
    as _i1;
import 'package:dental_guard_flutter/screen/main/addStudent/AddStudentPage.dart'
    as _i2;
import 'package:dental_guard_flutter/screen/main/imageDetect/camera/CameraPage.dart'
    as _i3;
import 'package:dental_guard_flutter/screen/main/imageDetect/ImageDetectPage.dart'
    as _i5;
import 'package:dental_guard_flutter/screen/main/MainPage.dart' as _i8;
import 'package:dental_guard_flutter/screen/main/setting/editUserInformation/EditUserInformationPage.dart'
    as _i4;
import 'package:dental_guard_flutter/screen/main/setting/setting/SettingPage.dart'
    as _i12;
import 'package:dental_guard_flutter/screen/main/setting/userInfo/UserInfoPage.dart'
    as _i15;
import 'package:dental_guard_flutter/screen/main/studentInfo/StudentInfoPage.dart'
    as _i13;
import 'package:dental_guard_flutter/screen/main/studentList/StudentListPage.dart'
    as _i14;
import 'package:flutter/material.dart' as _i17;

/// generated route for
/// [_i1.AddClassPage]
class AddClassRoute extends _i16.PageRouteInfo<void> {
  const AddClassRoute({List<_i16.PageRouteInfo>? children})
    : super(AddClassRoute.name, initialChildren: children);

  static const String name = 'AddClassRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddClassPage();
    },
  );
}

/// generated route for
/// [_i2.AddStudentPage]
class AddStudentRoute extends _i16.PageRouteInfo<void> {
  const AddStudentRoute({List<_i16.PageRouteInfo>? children})
    : super(AddStudentRoute.name, initialChildren: children);

  static const String name = 'AddStudentRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i2.AddStudentPage();
    },
  );
}

/// generated route for
/// [_i3.CameraPage]
class CameraRoute extends _i16.PageRouteInfo<void> {
  const CameraRoute({List<_i16.PageRouteInfo>? children})
    : super(CameraRoute.name, initialChildren: children);

  static const String name = 'CameraRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return _i3.CameraPage();
    },
  );
}

/// generated route for
/// [_i4.EditUserInformationPage]
class EditUserInformationRoute extends _i16.PageRouteInfo<void> {
  const EditUserInformationRoute({List<_i16.PageRouteInfo>? children})
    : super(EditUserInformationRoute.name, initialChildren: children);

  static const String name = 'EditUserInformationRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i4.EditUserInformationPage();
    },
  );
}

/// generated route for
/// [_i5.ImageDetectPage]
class ImageDetectRoute extends _i16.PageRouteInfo<ImageDetectRouteArgs> {
  ImageDetectRoute({
    _i17.Key? key,
    required int studentId,
    _i18.TeethRecordsResponse? teethRecord,
    List<_i16.PageRouteInfo>? children,
  }) : super(
         ImageDetectRoute.name,
         args: ImageDetectRouteArgs(
           key: key,
           studentId: studentId,
           teethRecord: teethRecord,
         ),
         initialChildren: children,
       );

  static const String name = 'ImageDetectRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ImageDetectRouteArgs>();
      return _i5.ImageDetectPage(
        key: args.key,
        studentId: args.studentId,
        teethRecord: args.teethRecord,
      );
    },
  );
}

class ImageDetectRouteArgs {
  const ImageDetectRouteArgs({
    this.key,
    required this.studentId,
    this.teethRecord,
  });

  final _i17.Key? key;

  final int studentId;

  final _i18.TeethRecordsResponse? teethRecord;

  @override
  String toString() {
    return 'ImageDetectRouteArgs{key: $key, studentId: $studentId, teethRecord: $teethRecord}';
  }
}

/// generated route for
/// [_i6.LaunchPage]
class LaunchRoute extends _i16.PageRouteInfo<void> {
  const LaunchRoute({List<_i16.PageRouteInfo>? children})
    : super(LaunchRoute.name, initialChildren: children);

  static const String name = 'LaunchRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i6.LaunchPage();
    },
  );
}

/// generated route for
/// [_i7.LoginPage]
class LoginRoute extends _i16.PageRouteInfo<void> {
  const LoginRoute({List<_i16.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i7.LoginPage();
    },
  );
}

/// generated route for
/// [_i8.MainPage]
class MainRoute extends _i16.PageRouteInfo<void> {
  const MainRoute({List<_i16.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i8.MainPage();
    },
  );
}

/// generated route for
/// [_i9.SetAccountPage]
class SetAccountRoute extends _i16.PageRouteInfo<void> {
  const SetAccountRoute({List<_i16.PageRouteInfo>? children})
    : super(SetAccountRoute.name, initialChildren: children);

  static const String name = 'SetAccountRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i9.SetAccountPage();
    },
  );
}

/// generated route for
/// [_i10.SetPasswordPage]
class SetPasswordRoute extends _i16.PageRouteInfo<SetPasswordRouteArgs> {
  SetPasswordRoute({
    _i17.Key? key,
    required String account,
    List<_i16.PageRouteInfo>? children,
  }) : super(
         SetPasswordRoute.name,
         args: SetPasswordRouteArgs(key: key, account: account),
         initialChildren: children,
       );

  static const String name = 'SetPasswordRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SetPasswordRouteArgs>();
      return _i10.SetPasswordPage(key: args.key, account: args.account);
    },
  );
}

class SetPasswordRouteArgs {
  const SetPasswordRouteArgs({this.key, required this.account});

  final _i17.Key? key;

  final String account;

  @override
  String toString() {
    return 'SetPasswordRouteArgs{key: $key, account: $account}';
  }
}

/// generated route for
/// [_i11.SetUserInfoPage]
class SetUserInfoRoute extends _i16.PageRouteInfo<SetUserInfoRouteArgs> {
  SetUserInfoRoute({
    _i17.Key? key,
    required String account,
    required String password,
    List<_i16.PageRouteInfo>? children,
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

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SetUserInfoRouteArgs>();
      return _i11.SetUserInfoPage(
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

  final _i17.Key? key;

  final String account;

  final String password;

  @override
  String toString() {
    return 'SetUserInfoRouteArgs{key: $key, account: $account, password: $password}';
  }
}

/// generated route for
/// [_i12.SettingPage]
class SettingRoute extends _i16.PageRouteInfo<void> {
  const SettingRoute({List<_i16.PageRouteInfo>? children})
    : super(SettingRoute.name, initialChildren: children);

  static const String name = 'SettingRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i12.SettingPage();
    },
  );
}

/// generated route for
/// [_i13.StudentInfoPage]
class StudentInfoRoute extends _i16.PageRouteInfo<StudentInfoRouteArgs> {
  StudentInfoRoute({
    _i17.Key? key,
    required _i19.StudentListResponse student,
    List<_i16.PageRouteInfo>? children,
  }) : super(
         StudentInfoRoute.name,
         args: StudentInfoRouteArgs(key: key, student: student),
         initialChildren: children,
       );

  static const String name = 'StudentInfoRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StudentInfoRouteArgs>();
      return _i13.StudentInfoPage(key: args.key, student: args.student);
    },
  );
}

class StudentInfoRouteArgs {
  const StudentInfoRouteArgs({this.key, required this.student});

  final _i17.Key? key;

  final _i19.StudentListResponse student;

  @override
  String toString() {
    return 'StudentInfoRouteArgs{key: $key, student: $student}';
  }
}

/// generated route for
/// [_i14.StudentListPage]
class StudentListRoute extends _i16.PageRouteInfo<void> {
  const StudentListRoute({List<_i16.PageRouteInfo>? children})
    : super(StudentListRoute.name, initialChildren: children);

  static const String name = 'StudentListRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i14.StudentListPage();
    },
  );
}

/// generated route for
/// [_i15.UserInfoPage]
class UserInfoRoute extends _i16.PageRouteInfo<void> {
  const UserInfoRoute({List<_i16.PageRouteInfo>? children})
    : super(UserInfoRoute.name, initialChildren: children);

  static const String name = 'UserInfoRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i15.UserInfoPage();
    },
  );
}

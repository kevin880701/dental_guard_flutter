// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [CameraScreen]
class CameraRoute extends PageRouteInfo<void> {
  const CameraRoute({List<PageRouteInfo>? children})
    : super(CameraRoute.name, initialChildren: children);

  static const String name = 'CameraRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return CameraScreen();
    },
  );
}

/// generated route for
/// [CreateUserProfileScreen]
class CreateUserProfileRoute extends PageRouteInfo<void> {
  const CreateUserProfileRoute({List<PageRouteInfo>? children})
    : super(CreateUserProfileRoute.name, initialChildren: children);

  static const String name = 'CreateUserProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CreateUserProfileScreen();
    },
  );
}

/// generated route for
/// [GroupMainScreen]
class GroupMainRoute extends PageRouteInfo<GroupMainRouteArgs> {
  GroupMainRoute({
    Key? key,
    required GroupData group,
    List<PageRouteInfo>? children,
  }) : super(
         GroupMainRoute.name,
         args: GroupMainRouteArgs(key: key, group: group),
         initialChildren: children,
       );

  static const String name = 'GroupMainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GroupMainRouteArgs>();
      return GroupMainScreen(key: args.key, group: args.group);
    },
  );
}

class GroupMainRouteArgs {
  const GroupMainRouteArgs({this.key, required this.group});

  final Key? key;

  final GroupData group;

  @override
  String toString() {
    return 'GroupMainRouteArgs{key: $key, group: $group}';
  }
}

/// generated route for
/// [LaunchScreen]
class LaunchRoute extends PageRouteInfo<void> {
  const LaunchRoute({List<PageRouteInfo>? children})
    : super(LaunchRoute.name, initialChildren: children);

  static const String name = 'LaunchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LaunchScreen();
    },
  );
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginScreen();
    },
  );
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainScreen();
    },
  );
}

/// generated route for
/// [MemberInfoScreen]
class MemberInfoRoute extends PageRouteInfo<MemberInfoRouteArgs> {
  MemberInfoRoute({
    Key? key,
    required UserInfoData user,
    List<PageRouteInfo>? children,
  }) : super(
         MemberInfoRoute.name,
         args: MemberInfoRouteArgs(key: key, user: user),
         initialChildren: children,
       );

  static const String name = 'MemberInfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MemberInfoRouteArgs>();
      return MemberInfoScreen(key: args.key, user: args.user);
    },
  );
}

class MemberInfoRouteArgs {
  const MemberInfoRouteArgs({this.key, required this.user});

  final Key? key;

  final UserInfoData user;

  @override
  String toString() {
    return 'MemberInfoRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [TeethDetectionScreen]
class TeethDetectionRoute extends PageRouteInfo<TeethDetectionRouteArgs> {
  TeethDetectionRoute({
    Key? key,
    required String userId,
    BrushingRecordData? brushingRecordData,
    List<PageRouteInfo>? children,
  }) : super(
         TeethDetectionRoute.name,
         args: TeethDetectionRouteArgs(
           key: key,
           userId: userId,
           brushingRecordData: brushingRecordData,
         ),
         initialChildren: children,
       );

  static const String name = 'TeethDetectionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TeethDetectionRouteArgs>();
      return TeethDetectionScreen(
        key: args.key,
        userId: args.userId,
        brushingRecordData: args.brushingRecordData,
      );
    },
  );
}

class TeethDetectionRouteArgs {
  const TeethDetectionRouteArgs({
    this.key,
    required this.userId,
    this.brushingRecordData,
  });

  final Key? key;

  final String userId;

  final BrushingRecordData? brushingRecordData;

  @override
  String toString() {
    return 'TeethDetectionRouteArgs{key: $key, userId: $userId, brushingRecordData: $brushingRecordData}';
  }
}

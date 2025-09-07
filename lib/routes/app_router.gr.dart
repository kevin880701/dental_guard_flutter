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
      return const CameraScreen();
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
    required GroupWithUserTypeData group,
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

  final GroupWithUserTypeData group;

  @override
  String toString() {
    return 'GroupMainRouteArgs{key: $key, group: $group}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! GroupMainRouteArgs) return false;
    return key == other.key && group == other.group;
  }

  @override
  int get hashCode => key.hashCode ^ group.hashCode;
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
/// [MemberMainScreen]
class MemberMainRoute extends PageRouteInfo<MemberMainRouteArgs> {
  MemberMainRoute({
    Key? key,
    required GroupWithUserTypeData group,
    required UserInfoData user,
    List<PageRouteInfo>? children,
  }) : super(
          MemberMainRoute.name,
          args: MemberMainRouteArgs(key: key, group: group, user: user),
          initialChildren: children,
        );

  static const String name = 'MemberMainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MemberMainRouteArgs>();
      return MemberMainScreen(
        key: args.key,
        group: args.group,
        user: args.user,
      );
    },
  );
}

class MemberMainRouteArgs {
  const MemberMainRouteArgs({
    this.key,
    required this.group,
    required this.user,
  });

  final Key? key;

  final GroupWithUserTypeData group;

  final UserInfoData user;

  @override
  String toString() {
    return 'MemberMainRouteArgs{key: $key, group: $group, user: $user}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MemberMainRouteArgs) return false;
    return key == other.key && group == other.group && user == other.user;
  }

  @override
  int get hashCode => key.hashCode ^ group.hashCode ^ user.hashCode;
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

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TeethDetectionRouteArgs) return false;
    return key == other.key &&
        userId == other.userId &&
        brushingRecordData == other.brushingRecordData;
  }

  @override
  int get hashCode =>
      key.hashCode ^ userId.hashCode ^ brushingRecordData.hashCode;
}

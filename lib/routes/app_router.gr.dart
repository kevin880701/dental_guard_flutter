// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

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
/// [MemberListScreen]
class MemberListRoute extends PageRouteInfo<MemberListRouteArgs> {
  MemberListRoute({
    Key? key,
    required GroupData group,
    List<PageRouteInfo>? children,
  }) : super(
         MemberListRoute.name,
         args: MemberListRouteArgs(key: key, group: group),
         initialChildren: children,
       );

  static const String name = 'MemberListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MemberListRouteArgs>();
      return MemberListScreen(key: args.key, group: args.group);
    },
  );
}

class MemberListRouteArgs {
  const MemberListRouteArgs({this.key, required this.group});

  final Key? key;

  final GroupData group;

  @override
  String toString() {
    return 'MemberListRouteArgs{key: $key, group: $group}';
  }
}

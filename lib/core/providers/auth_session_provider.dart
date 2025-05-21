import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/auth/data/models/response/login/login_data.dart';
import '../../features/auth/data/models/response/user_info/user_info_data.dart';

class AuthSession {
  LoginData? loginData;
  UserInfoData? userInfoData;

  bool get isLoggedIn => loginData != null && userInfoData != null;
}

final authSessionProvider = Provider<AuthSession>((ref) => AuthSession());

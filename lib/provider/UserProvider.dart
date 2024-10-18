import 'dart:io';

import 'package:dental_guard_flutter/data/response/login/LoginResponse.dart';
import 'package:dental_guard_flutter/net/ApiManager.dart';
import 'package:dental_guard_flutter/utils/AppLog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userProvider = StateNotifierProvider<UserNotifier, UserState>((ref) {
  return UserNotifier(ref);
});

class UserState {
  final LoginResponse? loginResponse;

  UserState({this.loginResponse});

  UserState copyWith({
    LoginResponse? loginResponse,
  }) {
    return UserState(
      loginResponse: loginResponse ?? this.loginResponse,
    );
  }
}

class UserNotifier extends StateNotifier<UserState> {
  UserNotifier(this.ref) : super(UserState()) {
    apiManager = ApiManager(ref);
  }
  final Ref ref;
  late final ApiManager apiManager;

  Future<LoginResponse?> login({required String username, required String password}) async {
    try {
      LoginResponse? loginResponse = await apiManager.login(username: username, password: password);
      state = state.copyWith(loginResponse: loginResponse);
      return loginResponse;
    } catch (e, stackTrace) {
      AppLog.e("login Error：$e");
    }
    return null;
  }

  void logout() async {
  }
}

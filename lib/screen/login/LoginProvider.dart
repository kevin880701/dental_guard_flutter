import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dental_guard_flutter/data/response/user/login/LoginResponse.dart';
import 'package:dental_guard_flutter/net/UserApiManager.dart';
import 'package:dental_guard_flutter/utils/AppLog.dart';

class LoginState {
  final LoginResponse? userInfo;
  final List<String> data;

  LoginState({
    this.userInfo,
    this.data = const [],
  });

  LoginState copyWith({
    LoginResponse? userInfo,
    List<String>? data,
  }) {
    return LoginState(
      userInfo: userInfo ?? this.userInfo,
      data: List.unmodifiable(data ?? this.data),
    );
  }
}

final LoginProvider = StateNotifierProvider.autoDispose<LoginNotifier, LoginState>((ref) {
  return LoginNotifier(ref);
});

class LoginNotifier extends StateNotifier<LoginState> {
  LoginNotifier(this.ref) : super(LoginState()) {
  }

  final Ref ref;
  late String token = "";
  final UserApiManager userApiManager = UserApiManager.instance;

  Future<LoginResponse?> login({required String account, required String password}) async {
    try {
      LoginResponse? response = await userApiManager.login(account: account, password: password);
      state = state.copyWith(userInfo: response);

      return response;
    } catch (e, stackTrace) {
      AppLog.e("login Error：$e");
      return null;
    }
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../core/models/api_response.dart';
import '../../data/models/request/firebase_oauth_login_request/firebase_oauth_login_request.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../data/models/response/login/login_data.dart';

class SignInWithGoogleUseCase {
  final AuthRepository authRepository;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  SignInWithGoogleUseCase(this.authRepository);

  Future<ApiResponse<LoginData?>?> execute() async {
    try {
      // Step 1: Google 登入
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return null; // 使用者取消
      }

      final googleAuth = await googleUser.authentication;

      // Step 2: Firebase 登入
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await _auth.signInWithCredential(credential);

      // 取得 Firebase ID Token
      final idToken = await userCredential.user?.getIdToken();
      final firebaseUid = userCredential.user?.uid;
      final email = userCredential.user?.email ?? '';
      final name = userCredential.user?.displayName ?? '';

      // idToken 或 firebaseUid 不存在就當失敗
      if (idToken == null || firebaseUid == null) {
        await _signOut();
        return ApiResponse<LoginData?>(
          message: "無法取得登入資訊",
          resultCode: 4001,
          data: null,
        );
      }

      // Step 3: 呼叫後端 OAuth Login
      try {
        final loginData = await authRepository.firebaseOAuthLogin(FirebaseOAuthLoginRequest(
          loginType: 2, // Google
          idToken: idToken,
          email: email,
          name: name,)
        );

        return loginData;
      } catch (e) {
        // 後端登入失敗 → 登出 Firebase
        print("OAuth 登入失敗: $e");
        await _signOut();
        return ApiResponse<LoginData?>(
          message: "Google 登入失敗",
          resultCode: 4001,
          data: null,
        );
      }

    } catch (e) {
      print("Google 登入失敗: $e");
      await _signOut();
      return ApiResponse<LoginData?>(
        message: "Google 登入失敗",
        resultCode: 4001,
        data: null,
      );
    }
  }

  // 登出 Google 與 Firebase
  Future<void> _signOut() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
  }
}

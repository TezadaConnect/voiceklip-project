import 'package:flutter/foundation.dart';
import 'package:voiceklip_app/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

// import '../models/user.dart';
// import '../models/validation.dart';
class AuthProvider extends ChangeNotifier {
  final AuthService _authService = AuthService();
  User? _user;
  User? get user => _user;

  Future<void> signIn(String email, String password) async {
    _user = await _authService.login(email, password);
    notifyListeners();
  }

  Future<void> signOut() async {
    _authService.logout();
    _user = null;
    notifyListeners();
  }

  Future<void> checkUser() async {
    _user = await _authService.fetchUser();
  }

  // Future<void> registerWithEmailAndPassword(
  //     String email, String password) async {
  //   try {
  //     await _auth.createUserWithEmailAndPassword(
  //         email: email, password: password);
  //     notifyListeners();
  //   } catch (e) {
  //     // Handle the error
  //   }
  // }

  // Future<void> signOut() async {
  //   await _auth.signOut();
  //   notifyListeners();
  // }

  //-----------------------------------------------------------------------------
  //With in class
  // ignore: unused_field

  // States
  // Map? _user;
  // UserInfoModel? _userInfo;
  // Getter
  // Map? get user => _user;
  // UserInfoModel? get userInfo => _userInfo;

  // Future<void> login(Map cred) async {
  //   // cred["device_name"] = await getDeviceId();
  //   try {
  //     // final data = await _authService.login(cred);
  //     // storeToken(data);
  //     // _userInfo = await _authService.fetchUserInfo(data);
  //     // notifyListeners();
  //   } on Error catch (_) {
  //     rethrow;
  //   }
  //   notifyListeners();
  // }

  // Future<void> getUserInfo() async {
  //   try {
  //     // _userInfo = await _authService.fetchUser();
  //     // notifyListeners();
  //   } on Error catch (_) {
  //     rethrow;
  //   }
  //   notifyListeners();
  // }

  // // Future<String?> getDeviceId() async {
  // //   String? deviceId = await PlatformDeviceId.getDeviceId;
  // //   return deviceId;
  // // }

  // // void storeToken(String token) async {
  // //   await _storage.write(key: "token", value: token);
  // // }

  // // Future<String?> getToken() async {
  // //   final token = await _storage.read(key: "token");
  // //   return token;
  // // }

  // Future<void> logout() async {
  //   try {
  //     // await _authService.logout(await getToken(), await getDeviceId());
  //     // await _storage.delete(key: "token");
  //   } on Error catch (_) {
  //     rethrow;
  //   }
  // }
}

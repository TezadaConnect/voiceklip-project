import 'package:flutter/foundation.dart';
import 'package:voiceklip_app/models/user_model.dart';
import 'package:voiceklip_app/services/auth_service.dart';

// import '../models/user.dart';
// import '../models/validation.dart';
class AuthProvider extends ChangeNotifier {
  //With in class
  // ignore: unused_field
  final AuthService _authService = AuthService();
  // States
  Map? _user;
  UserInfoModel? _userInfo;
  // Getter
  Map? get user => _user;
  UserInfoModel? get userInfo => _userInfo;

  Future<void> login(Map cred) async {
    // cred["device_name"] = await getDeviceId();
    try {
      // final data = await _authService.login(cred);
      // storeToken(data);
      // _userInfo = await _authService.fetchUserInfo(data);
      // notifyListeners();
    } on Error catch (_) {
      rethrow;
    }
    notifyListeners();
  }

  Future<void> getUserInfo() async {
    try {
      // _userInfo = await _authService.fetchUser();
      // notifyListeners();
    } on Error catch (_) {
      rethrow;
    }
    notifyListeners();
  }

  // Future<String?> getDeviceId() async {
  //   String? deviceId = await PlatformDeviceId.getDeviceId;
  //   return deviceId;
  // }

  // void storeToken(String token) async {
  //   await _storage.write(key: "token", value: token);
  // }

  // Future<String?> getToken() async {
  //   final token = await _storage.read(key: "token");
  //   return token;
  // }

  Future<void> logout() async {
    try {
      // await _authService.logout(await getToken(), await getDeviceId());
      // await _storage.delete(key: "token");
    } on Error catch (_) {
      rethrow;
    }
  }
}

// Authentication service firebase
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  Future login(UserInfo user) {
    return fetchUser(user);
  }

  Future<UserInfo> register(UserInfo user) {
    return fetchUser(user);
  }

  Future logout() {
    throw "Put code here";
  }

  // Should be future
  Future<UserInfo> fetchUser(UserInfo userInfo) {
    throw "Put code here";
  }
}

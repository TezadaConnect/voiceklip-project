// Authentication service firebase
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> login(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return _auth.currentUser;
    } on FirebaseAuthException catch (_) {
      throw const FormatException('Error Please Try Again Later');
      // if (e.code == 'auth/invalid-credential') {
      //   throw const FormatException('Wrong password provided for that user.');
      // } else if (e.code == 'wrong-password') {
      //   throw const FormatException('No user found for that email.');
      // } else if (e.code == 'invalid-email') {
      //   throw const FormatException('Wrong email provided for that user.');
      // } else {
      // }
    }
  }

  // Future<UserInfo> register(UserInfo user) {
  // return fetchUser(user);
  // }

  Future<void> logout() async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch (_) {
      throw const FormatException('Error Please Try Again Later');
    }
  }

  // Should be future
  Future<User?> fetchUser() async {
    try {
      return _auth.currentUser;
    } on FirebaseAuthException catch (_) {
      throw const FormatException('No User Currently Logged In');
    }
  }
}

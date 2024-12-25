import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignin = GoogleSignIn();
  bool _isSignIn;

  //Non-null safety
  GoogleSignInProvider() {
    _isSignIn = false;
  }

  bool get isSigningIN => _isSignIn;

  set isSignIn(bool isSigningIn) {
    _isSignIn = isSigningIn;
    notifyListeners();
  }

  Future login() async {
    isSignIn = true;

    final user = await googleSignin.signIn();
    if (user == null) {
      isSignIn = false;
      return;
    } else {
      final googleAuth = await user.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);

      isSignIn = false;
    }
  }

  void logout() async {
    await googleSignin.disconnect();
    FirebaseAuth.instance.signOut();
  }
}

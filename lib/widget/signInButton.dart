import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:nu_noti_loginpart_pre2/provider/googleSignIn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      // ignore: deprecated_member_use
      child: OutlineButton.icon(
        onPressed: () {
          final aProvider =
              Provider.of<GoogleSignInProvider>(context, listen: false);
          aProvider.login();
        },
        label: Text(
          "Sign in with Google",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        icon: FaIcon(
          FontAwesomeIcons.google,
          color: Colors.redAccent,
        ),
        padding: EdgeInsets.symmetric(horizontal: 36, vertical: 8),
        borderSide: BorderSide(color: Colors.black),
        shape: StadiumBorder(),
        textColor: Colors.black,
        highlightedBorderColor: Colors.blue,
      ),
    );
  }
}

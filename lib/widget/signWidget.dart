import 'package:flutter/material.dart';
import 'package:nu_noti_loginpart_pre2/provider/googleSignIn.dart';
import 'package:nu_noti_loginpart_pre2/widget/signInButton.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: 175,
            child: Text(
              "NU Notificate Login",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Spacer(),
        SignInButton(),
        SizedBox(
          height: 100,
        )
      ],
    );
  }
}

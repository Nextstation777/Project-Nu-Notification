import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nu_noti_loginpart_pre2/UImain/screen.dart';
import 'package:nu_noti_loginpart_pre2/mainPage%20copy/app/config/routes/app_pages.dart';
import 'package:nu_noti_loginpart_pre2/mainPage%20copy/app/config/themes/app_theme.dart';
import 'package:nu_noti_loginpart_pre2/provider/googleSignIn.dart';
import 'package:nu_noti_loginpart_pre2/widget/signWidget.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            final provider = Provider.of<GoogleSignInProvider>(context);
            if (provider.isSigningIN) {
              return buildLoading();
            } else if (snapshot.hasData) {
              return GetMaterialApp(
                title: 'Home Page',
                theme: AppTheme.basic,
                initialRoute: AppPages.initial,
                getPages: AppPages.pages,
              );
            } else {
              return SignUpWidget();
            }
          },
        ),
      ),
    );
  }

  Widget buildLoading() {
    return Stack(
      fit: StackFit.expand,
      children: [
        Center(
          child: CircularProgressIndicator(),
        )
      ],
    );
  }
}

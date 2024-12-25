library intro;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import 'package:lottie/lottie.dart';
import 'package:nu_noti_loginpart_pre2/mainPage/app/config/routes/app_pages.dart';
import 'package:nu_noti_loginpart_pre2/mainPage/app/constans/app_constants.dart';

// bindings
part '../../bindings/intro_binding.dart';

// controller
part '../../controllers/intro_controller.dart';

// component
part '../components/background_image.dart';
part '../components/get_started_button.dart';
part '../components/header_text.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(flex: 5),
                _BackgroundImage(),
                _HeaderText(),
                Spacer(flex: 3),
                _GetStartedButton(),
                Spacer(flex: 5),
              ],
            ),
          ),
          IgnorePointer(
            child: LottieBuilder.asset(
              ImageAnimation.confetti,
              repeat: false,
            ),
          )
        ],
      ),
    );
  }
}

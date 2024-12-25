library dashboard;

import 'dart:ffi';
import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:nu_noti_loginpart_pre2/mainPage%20copy/app/config/routes/app_pages.dart';
import 'package:nu_noti_loginpart_pre2/mainPage%20copy/app/constans/app_constants.dart';
import 'package:nu_noti_loginpart_pre2/mainPage%20copy/app/shared_components/card_image.dart';
import 'package:nu_noti_loginpart_pre2/mainPage%20copy/app/shared_components/card_product.dart';
import 'package:nu_noti_loginpart_pre2/mainPage%20copy/app/utils/services/rest_api_service.dart';

// bindings
part '../../bindings/dashboard_binding.dart';

// controllers
part '../../controllers/dashboard_controller.dart';

// components
part '../components/background_content.dart';
part '../components/background_image.dart';
part '../components/bottom_navbar.dart';
part '../components/category_buttons.dart';
part '../components/header.dart';
part '../components/newest_game.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          _BackgroundImage(),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 50),
                _Header(),
                SizedBox(height: 30),
                _BackgroundContent(
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      _NewestGame(),
                      SizedBox(height: 30),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _BottomNavbar(),
    );
  }
}

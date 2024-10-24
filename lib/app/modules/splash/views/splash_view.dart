import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/appColors.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            // color: AppColors.white,
          image: DecorationImage(
            image: AssetImage('images/1.jpg'),
            fit: BoxFit.fill
          )
        ),
        height: Get.height,
        width: Get.width,
        // color: AppColors.white,
        child:  controller.loading==true
            ?Image.asset('images/Newlogo.png',)
            :Image.asset('images/Newlogo.png',),

      ),
    );
  }
}

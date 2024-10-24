import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/appColors.dart';
import '../controllers/starting_controller.dart';

class StartingView extends GetView<StartingController> {
  const StartingView({Key? key}) : super(key: key);
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
            ?Image.asset('images/Newlogo.png',color: AppColors.white,)
            :Image.asset('images/Newlogo.png',color: AppColors.white,),

      ),
    );
  }
}

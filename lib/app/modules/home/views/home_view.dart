import 'dart:io';

import 'package:education_mbd/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';

import '../../../../common/api/utils/utils.dart';
import '../../../../common/appColors.dart';
import '../../../../common/webview.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: Get.height,
        decoration: BoxDecoration(
          // color: AppColors.white,
            image: DecorationImage(
                image: AssetImage('images/bg_two.jpg'),
                fit: BoxFit.fill,

            )
        ),
        child: Padding(
          padding:  EdgeInsets.only(top: Get.height/8,left: Get.width/10,right: Get.width/10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding:  EdgeInsets.only(top: Get.height/20),
                  child: GridView.builder(
                    shrinkWrap: true,
                    // padding: EdgeInsets.zero,
                    physics:
                    NeverScrollableScrollPhysics(),
                    gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                        Get.width > 550 ? 4 : 2,
                        crossAxisSpacing: 30,
                        childAspectRatio: Get.width /
                            Get.height /
                            0.7 *
                             1.0,
                        mainAxisSpacing: 0),
                    itemBuilder: (_, index) => Container(
                      child: Obx(
                            () => InkWell(
                              onTap: (){
                                if(controller.getDynamicData[index]['module_name']=='E-book'){
                                  Utils.commonViewPopup(
                                      Image.asset("images/img.png", height: 240),
                                      "View",
                                      "Are you sure you want to open it in a new browser?", () {
                                    Get.back();
                                    Navigator.push(
                                      Get.context!,
                                      MaterialPageRoute(
                                        builder: (_) =>
                                            InAppWebViewContainer('https://newgenbookspvtltd.com/E-books/Mi-IT/grade-1/e-book/index.html'),
                                      ),
                                    );
                                  }, () {
                                    Get.back();
                                  });
                                }else  if(controller.getDynamicData[index]['module_name']=="Assessment"){
                                  Utils.commonViewPopup(
                                      Image.asset("images/img.png", height: 240),
                                      "View",
                                      "Are you sure you want to open it in a new browser?", () {
                                    Get.back();
                                    Navigator.push(
                                      Get.context!,
                                      MaterialPageRoute(
                                        builder: (_) =>
                                            InAppWebViewContainer('https://newgenbookspvtltd.com/E-books/Mi-IT/grade-1/assessment/index.html'),
                                      ),
                                    );
                                  }, () {
                                    Get.back();
                                  });
                                }else  if(controller.getDynamicData[index]['module_name']=="Interactivity"){
                                  Utils.commonViewPopup(
                                      Image.asset("images/img.png", height: 240),
                                      "View",
                                      "Are you sure you want to open it in a new browser?", () {
                                    Get.back();
                                    Navigator.push(
                                      Get.context!,
                                      MaterialPageRoute(
                                        builder: (_) =>
                                            InAppWebViewContainer('https://newgenbookspvtltd.com/E-books/Mi-IT/grade-1/int_e-book/index.html'),
                                      ),
                                    );
                                  }, () {
                                    Get.back();
                                  });

                                }else  if(controller.getDynamicData[index]['module_name']=="Animation"){

                                  Navigator.push(
                                    Get.context!,
                                    MaterialPageRoute(
                                      builder: (_) =>
                                          InAppWebViewContainer('https://www.youtube.com/watch?v=a73dowZxBZc&list=PLMWIX0kIaIeV0Uf89lzabQFJeVvg6C0Ip&index=1'),
                                    ),
                                  );
                                }else  if(controller.getDynamicData[index]['module_name']=="Test Generator"){
                                  Utils.commonViewPopup(
                                      Image.asset("images/img.png", height: 240),
                                      "View",
                                      "Are you sure you want to open it in a new browser?", () {
                                    Get.back();
                                    Navigator.push(
                                      Get.context!,
                                      MaterialPageRoute(
                                        builder: (_) =>
                                            InAppWebViewContainer('https://mbdseries.s3.ap-south-1.amazonaws.com/hflws/LW_Smart_EVS_1/tab/tg/index.html'),
                                      ),
                                    );
                                  }, () {
                                    Get.back();
                                  });
                                }

                                // Get.toNamed(Routes.CLASSES,arguments: controller.getClass);
                              },

                          child: Padding(
                            padding:
                            const EdgeInsets.only(
                                top: 0.0),
                            child: Column(
                              children: [
                                Container(
                                  height: Get.height / 6.5,
                                  width: Get.width / 3,
                                  decoration:
                                  BoxDecoration(
                                    color: AppColors
                                        .light_background_color_gray,
                                    shape: BoxShape
                                        .rectangle,
                                    borderRadius:
                                    BorderRadius
                                        .circular(15),
                                    border: Border.all(
                                        color: AppColors
                                            .yellow
                                            ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets
                                        .all(30),
                                    child:
                                    Image.asset(
                                      controller
                                          .getDynamicData[
                                      index]['icon'],),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.only(
                                      left: 5,
                                      right: 5,
                                      top: 10),
                                  child: Text(
                                      controller
                                          .getDynamicData[
                                      index]['module_name'],
                                      textAlign: TextAlign
                                          .center,
                                      style: Utils
                                          .text16SPMedium()),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    itemCount: controller.getDynamicData.length,
                    //
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}

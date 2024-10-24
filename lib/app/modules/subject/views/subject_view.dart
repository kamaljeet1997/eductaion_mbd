import 'package:education_mbd/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/api/utils/utils.dart';
import '../../../../common/appColors.dart';
import '../../../../common/webview.dart';
import '../controllers/subject_controller.dart';

class SubjectView extends GetView<SubjectController> {
  const SubjectView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: Get.height,
        decoration: BoxDecoration(
          // color: AppColors.white,
            image: DecorationImage(
                image: AssetImage('images/bg.jpg'),
                fit: BoxFit.fill,
                opacity: 0.2
            )
        ),
        child: Padding(
          padding:  EdgeInsets.only(top: Get.height/7,left: 20,right: 20),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: Get.height/20,left: 20,right: 20,bottom: 20),
                    child: Container(
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
                                .border_color
                                .withOpacity(
                                0.6)),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.only(top: Get.height/60,left: 20,right: 20,bottom: 10),
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: controller.getSubjects.length,
                            shrinkWrap: true,
                            itemBuilder: (_,i){
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            if(controller.getSubjects[i]['name']=='ClapClap Kit-A') {
                                              Map map={
                                                "module":"Ebook",
                                                "subjectName":'ClapClap Kit-A',
                                                "link":controller.getSubjects[i]['link'] == ""?"":controller.getSubjects[i]['link']!.replaceAll(" ", "%20")
                                              };
                                              Get.toNamed(Routes.HOME, arguments: map);

                                              // if (controller.getSubjects[i]['link'] == "") {
                                              //   Utils.shortAlertToast("Link not available");
                                              // } else {
                                              //   // Navigator.push(
                                              //   //   Get.context!,
                                              //   //   MaterialPageRoute(
                                              //   //     builder: (_) =>
                                              //   //         InAppWebViewContainer(controller.getSubjects[i]['link']!.replaceAll(" ", "%20")),
                                              //   //   ),
                                              //   // );
                                              //   Get.toNamed(Routes.HOME);
                                              // }

                                            }

                                            else if(controller.getSubjects[i]['name']=='My Alphabet A to Z'){
                                              print('index values :  $i');
                                              Map map={
                                                "module":"Ebook",
                                                "subjectName":'My Alphabet A to Z',
                                                "link":controller.getSubjects[i]['link'] == ""?"":controller.getSubjects[i]['link']!.replaceAll(" ", "%20")
                                              };
                                              Get.toNamed(Routes.HOME, arguments: map);
                                              // if(controller.getSubjects[i]['link']==""){
                                              //   Utils.shortAlertToast("Link not available");
                                              // }else {
                                              //   Navigator.push(
                                              //     Get.context!,
                                              //     MaterialPageRoute(
                                              //       builder: (_) =>
                                              //           InAppWebViewContainer(controller.getSubjects[i]['link']!.replaceAll(" ", "%20")),
                                              //     ),
                                              //   );
                                              //   Get.toNamed(Routes.HOME);
                                              // }
                                            }
                                            else if(controller.getSubjects[i]['name']=='Writing Skillbook (Capital Letter)'){
                                              print('index values :  $i');
                                              Map map={
                                                "module":"Ebook",
                                                "subjectName":'Writing Skillbook (Capital Letter)',
                                                "link":controller.getSubjects[i]['link'] == ""?"":controller.getSubjects[i]['link']!.replaceAll(" ", "%20")
                                              };
                                              Get.toNamed(Routes.HOME, arguments: map);
                                              // if(controller.getSubjects[i]['link']==""){
                                              //   Utils.shortAlertToast("Link not available");
                                              // }else {
                                              // Navigator.push(
                                              //   Get.context!,
                                              //   MaterialPageRoute(
                                              //     builder: (_) =>
                                              //         InAppWebViewContainer(controller.getSubjects[i]['link']!.replaceAll(" ", "%20")),
                                              //   ),
                                              // );
                                              //   Get.toNamed(Routes.HOME);
                                              // }
                                            }
                                            else if(controller.getSubjects[i]['name']=='Aao Sikhe K, Kh, G'){
                                              print('index values :  $i');
                                              // if(controller.getSubjects[i]['link']==""){
                                              //   Utils.shortAlertToast("Link not available");
                                              // }else {
                                              //   Navigator.push(
                                              //     Get.context!,
                                              //     MaterialPageRoute(
                                              //       builder: (_) =>
                                              //           InAppWebViewContainer(controller.getSubjects[i]['link']!.replaceAll(" ", "%20")),
                                              //     ),
                                              //   );
                                              //   Get.toNamed(Routes.HOME);
                                              // }
                                              Map map={
                                                "module":"Ebook",
                                                "subjectName":'Aao Sikhe K, Kh, G',
                                                "link":controller.getSubjects[i]['link'] == ""?"":controller.getSubjects[i]['link']!.replaceAll(" ", "%20")
                                              };
                                              Get.toNamed(Routes.HOME, arguments: map);
                                            }
                                            else if(controller.getSubjects[i]['name']=='Akshar Lekhan'){
                                              print('index values :  $i');
                                              // if(controller.getSubjects[i]['link']==""){
                                              //   Utils.shortAlertToast("Link not available");
                                              // }else {
                                              //   Navigator.push(
                                              //     Get.context!,
                                              //     MaterialPageRoute(
                                              //       builder: (_) =>
                                              //           InAppWebViewContainer(controller.getSubjects[i]['link']!.replaceAll(" ", "%20")),
                                              //     ),
                                              //   );
                                              //   Get.toNamed(Routes.HOME);
                                              // }
                                              Map map={
                                                "module":"Ebook",
                                                "subjectName":'Akshar Lekhan',
                                                "link":controller.getSubjects[i]['link'] == ""?"":controller.getSubjects[i]['link']!.replaceAll(" ", "%20")
                                              };
                                              Get.toNamed(Routes.HOME, arguments: map);
                                            }
                                            else if(controller.getSubjects[i]['name']=='Numbers 1 to 100'){
                                              print('index values :  $i');
                                              // if(controller.getSubjects[i]['link']==""){
                                              //   Utils.shortAlertToast("Link not available");
                                              // }else {
                                              //   Navigator.push(
                                              //     Get.context!,
                                              //     MaterialPageRoute(
                                              //       builder: (_) =>
                                              //           InAppWebViewContainer(controller.getSubjects[i]['link']!.replaceAll(" ", "%20")),
                                              //     ),
                                              //   );
                                              //   Get.toNamed(Routes.HOME);
                                              // }
                                              Map map={
                                                "module":"Ebook",
                                                "subjectName":'Numbers 1 to 100',
                                                "link":controller.getSubjects[i]['link'] == ""?"":controller.getSubjects[i]['link']!.replaceAll(" ", "%20")
                                              };
                                              Get.toNamed(Routes.HOME, arguments: map);
                                            }
                                            else if(controller.getSubjects[i]['name']=='Rhymes & Nanhe Geet - A'){
                                              print('index values :  $i');
                                              // if(controller.getSubjects[i]['link']==""){
                                              //   Utils.shortAlertToast("Link not available");
                                              // }else {
                                              //   Navigator.push(
                                              //     Get.context!,
                                              //     MaterialPageRoute(
                                              //       builder: (_) =>
                                              //           InAppWebViewContainer(controller.getSubjects[i]['link']!.replaceAll(" ", "%20")),
                                              //     ),
                                              //   );
                                              //   Get.toNamed(Routes.HOME);
                                              // }
                                              Map map={
                                                "module":"Ebook",
                                                "subjectName":'Rhymes & Nanhe Geet - A',
                                                "link":controller.getSubjects[i]['link'] == ""?"":controller.getSubjects[i]['link']!.replaceAll(" ", "%20")
                                              };
                                              Get.toNamed(Routes.HOME, arguments: map);
                                            }
                                            else if(controller.getSubjects[i]['name']=='Drawing Skillbook - A'){
                                              print('index values :  $i');
                                              // if(controller.getSubjects[i]['link']==""){
                                              //   Utils.shortAlertToast("Link not available");
                                              // }else {
                                              //   Navigator.push(
                                              //     Get.context!,
                                              //     MaterialPageRoute(
                                              //       builder: (_) =>
                                              //           InAppWebViewContainer(controller.getSubjects[i]['link']!.replaceAll(" ", "%20")),
                                              //     ),
                                              //   );
                                              //   Get.toNamed(Routes.HOME);
                                              // }
                                              Map map={
                                                "module":"Ebook",
                                                "subjectName":'Drawing Skillbook - A',
                                                "link":controller.getSubjects[i]['link'] == ""?"":controller.getSubjects[i]['link']!.replaceAll(" ", "%20")
                                              };
                                              Get.toNamed(Routes.HOME, arguments: map);
                                            }
                                            else if(controller.getSubjects[i]['name']=='Colours & Craft - A'){
                                              // if(controller.getSubjects[i]['link']==""){
                                              //   Utils.shortAlertToast("Link not available");
                                              // }else {
                                              //
                                              //  Get.toNamed(Routes.HOME);
                                              // }
                                              Map map={
                                                "module":"Ebook",
                                                "subjectName":'Colours & Craft - A',
                                                "link":controller.getSubjects[i]['link'] == ""?"":controller.getSubjects[i]['link']!.replaceAll(" ", "%20")
                                              };
                                              Get.toNamed(Routes.HOME, arguments: map);
                                            }
                                            else{
                                              Utils.shortAlertToast("Link not available");
                                            }
                                          },
                                          child: Container(
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text(controller.getSubjects[i]['name'],style: Utils.text16SPMedium()),
                                            ),
                                          ),
                                        ),
                                       i<controller.getSubjects.length-1?Row(
                                          children: List.generate(150~/2, (index) => Expanded(
                                            child: Container(
                                              color: index%2==0?Colors.transparent
                                                  :Colors.grey,
                                              height: 0.5,
                                            ),
                                          )),
                                        ):SizedBox.shrink()
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            }),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: Get.height/30,),
                    child: Container(
                      height: Get.height/30,
                      width:Get.width/2,
                      decoration: BoxDecoration(
                          color: AppColors.kedback2,
                          boxShadow: [BoxShadow(
                              color: AppColors.grey.withOpacity(0.2),
                              blurRadius: 5,
                              offset: Offset(
                                  0,5
                              )
                          )],
                          borderRadius: BorderRadius.circular(7)
                      ),
                      child: Obx(
                          ()=> Center(
                          child: Text(controller.className.toUpperCase(),
                            style: TextStyle(
                                color: AppColors.white,
                                letterSpacing: 1.5
                            ),),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
             /* Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.getSubjects.length,

                    itemBuilder: (_,i){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(

                          onTap: (){
                            if(controller.getSubjects[i]['name']=='ClapClap Kit-A') {
                              Map map={
                                "module":"Ebook",
                                "subjectName":'ClapClap Kit-A',
                                "link":controller.getSubjects[i]['link'] == ""?"":controller.getSubjects[i]['link']!.replaceAll(" ", "%20")
                              };
                              Get.toNamed(Routes.HOME, arguments: map);

                              // if (controller.getSubjects[i]['link'] == "") {
                              //   Utils.shortAlertToast("Link not available");
                              // } else {
                              //   // Navigator.push(
                              //   //   Get.context!,
                              //   //   MaterialPageRoute(
                              //   //     builder: (_) =>
                              //   //         InAppWebViewContainer(controller.getSubjects[i]['link']!.replaceAll(" ", "%20")),
                              //   //   ),
                              //   // );
                              //   Get.toNamed(Routes.HOME);
                              // }

                            }

                            else if(controller.getSubjects[i]['name']=='My Alphabet A to Z'){
                              print('index values :  $i');
                              Map map={
                                "module":"Ebook",
                                "subjectName":'My Alphabet A to Z',
                                "link":controller.getSubjects[i]['link'] == ""?"":controller.getSubjects[i]['link']!.replaceAll(" ", "%20")
                              };
                              Get.toNamed(Routes.HOME, arguments: map);
                              // if(controller.getSubjects[i]['link']==""){
                              //   Utils.shortAlertToast("Link not available");
                              // }else {
                              //   Navigator.push(
                              //     Get.context!,
                              //     MaterialPageRoute(
                              //       builder: (_) =>
                              //           InAppWebViewContainer(controller.getSubjects[i]['link']!.replaceAll(" ", "%20")),
                              //     ),
                              //   );
                              //   Get.toNamed(Routes.HOME);
                              // }
                            }
                            else if(controller.getSubjects[i]['name']=='Writing Skillbook (Capital Letter)'){
                              print('index values :  $i');
                              Map map={
                                "module":"Ebook",
                                "subjectName":'Writing Skillbook (Capital Letter)',
                                "link":controller.getSubjects[i]['link'] == ""?"":controller.getSubjects[i]['link']!.replaceAll(" ", "%20")
                              };
                              Get.toNamed(Routes.HOME, arguments: map);
                              // if(controller.getSubjects[i]['link']==""){
                              //   Utils.shortAlertToast("Link not available");
                              // }else {
                                // Navigator.push(
                                //   Get.context!,
                                //   MaterialPageRoute(
                                //     builder: (_) =>
                                //         InAppWebViewContainer(controller.getSubjects[i]['link']!.replaceAll(" ", "%20")),
                                //   ),
                                // );
                              //   Get.toNamed(Routes.HOME);
                              // }
                            }
                            else if(controller.getSubjects[i]['name']=='Aao Sikhe K, Kh, G'){
                              print('index values :  $i');
                              // if(controller.getSubjects[i]['link']==""){
                              //   Utils.shortAlertToast("Link not available");
                              // }else {
                              //   Navigator.push(
                              //     Get.context!,
                              //     MaterialPageRoute(
                              //       builder: (_) =>
                              //           InAppWebViewContainer(controller.getSubjects[i]['link']!.replaceAll(" ", "%20")),
                              //     ),
                              //   );
                              //   Get.toNamed(Routes.HOME);
                              // }
                              Map map={
                                "module":"Ebook",
                                "subjectName":'Aao Sikhe K, Kh, G',
                                "link":controller.getSubjects[i]['link'] == ""?"":controller.getSubjects[i]['link']!.replaceAll(" ", "%20")
                              };
                              Get.toNamed(Routes.HOME, arguments: map);
                            }
                            else if(controller.getSubjects[i]['name']=='Akshar Lekhan'){
                              print('index values :  $i');
                              // if(controller.getSubjects[i]['link']==""){
                              //   Utils.shortAlertToast("Link not available");
                              // }else {
                              //   Navigator.push(
                              //     Get.context!,
                              //     MaterialPageRoute(
                              //       builder: (_) =>
                              //           InAppWebViewContainer(controller.getSubjects[i]['link']!.replaceAll(" ", "%20")),
                              //     ),
                              //   );
                              //   Get.toNamed(Routes.HOME);
                              // }
                              Map map={
                                "module":"Ebook",
                                "subjectName":'Akshar Lekhan',
                                "link":controller.getSubjects[i]['link'] == ""?"":controller.getSubjects[i]['link']!.replaceAll(" ", "%20")
                              };
                              Get.toNamed(Routes.HOME, arguments: map);
                            }
                            else if(controller.getSubjects[i]['name']=='Numbers 1 to 100'){
                              print('index values :  $i');
                              // if(controller.getSubjects[i]['link']==""){
                              //   Utils.shortAlertToast("Link not available");
                              // }else {
                              //   Navigator.push(
                              //     Get.context!,
                              //     MaterialPageRoute(
                              //       builder: (_) =>
                              //           InAppWebViewContainer(controller.getSubjects[i]['link']!.replaceAll(" ", "%20")),
                              //     ),
                              //   );
                              //   Get.toNamed(Routes.HOME);
                              // }
                              Map map={
                                "module":"Ebook",
                                "subjectName":'Numbers 1 to 100',
                                "link":controller.getSubjects[i]['link'] == ""?"":controller.getSubjects[i]['link']!.replaceAll(" ", "%20")
                              };
                              Get.toNamed(Routes.HOME, arguments: map);
                            }
                            else if(controller.getSubjects[i]['name']=='Rhymes & Nanhe Geet - A'){
                              print('index values :  $i');
                              // if(controller.getSubjects[i]['link']==""){
                              //   Utils.shortAlertToast("Link not available");
                              // }else {
                              //   Navigator.push(
                              //     Get.context!,
                              //     MaterialPageRoute(
                              //       builder: (_) =>
                              //           InAppWebViewContainer(controller.getSubjects[i]['link']!.replaceAll(" ", "%20")),
                              //     ),
                              //   );
                              //   Get.toNamed(Routes.HOME);
                              // }
                              Map map={
                                "module":"Ebook",
                                "subjectName":'Rhymes & Nanhe Geet - A',
                                "link":controller.getSubjects[i]['link'] == ""?"":controller.getSubjects[i]['link']!.replaceAll(" ", "%20")
                              };
                              Get.toNamed(Routes.HOME, arguments: map);
                            }
                            else if(controller.getSubjects[i]['name']=='Drawing Skillbook - A'){
                              print('index values :  $i');
                              // if(controller.getSubjects[i]['link']==""){
                              //   Utils.shortAlertToast("Link not available");
                              // }else {
                              //   Navigator.push(
                              //     Get.context!,
                              //     MaterialPageRoute(
                              //       builder: (_) =>
                              //           InAppWebViewContainer(controller.getSubjects[i]['link']!.replaceAll(" ", "%20")),
                              //     ),
                              //   );
                              //   Get.toNamed(Routes.HOME);
                              // }
                              Map map={
                                "module":"Ebook",
                                "subjectName":'Drawing Skillbook - A',
                                "link":controller.getSubjects[i]['link'] == ""?"":controller.getSubjects[i]['link']!.replaceAll(" ", "%20")
                              };
                              Get.toNamed(Routes.HOME, arguments: map);
                            }
                            else if(controller.getSubjects[i]['name']=='Colours & Craft - A'){
                              // if(controller.getSubjects[i]['link']==""){
                              //   Utils.shortAlertToast("Link not available");
                              // }else {
                              //
                              //  Get.toNamed(Routes.HOME);
                              // }
                              Map map={
                                "module":"Ebook",
                                "subjectName":'Colours & Craft - A',
                                "link":controller.getSubjects[i]['link'] == ""?"":controller.getSubjects[i]['link']!.replaceAll(" ", "%20")
                              };
                              Get.toNamed(Routes.HOME, arguments: map);
                            }
                            else{
                              Utils.shortAlertToast("Link not available");
                            }
                          },
                          child: Container(
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
                                      .border_color
                                      .withOpacity(
                                      0.6)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(controller.getSubjects[i]['name'],style: Utils.text16SPMedium()),
                            ),
                          ),
                        ),
                      );
                    }),
              )*/
            ],
          ),
        ),
      )
    );
  }
}

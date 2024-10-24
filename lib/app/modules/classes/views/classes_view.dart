import 'package:education_mbd/app/routes/app_pages.dart';
import 'package:education_mbd/common/api/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/appColors.dart';
import '../controllers/classes_controller.dart';

class ClassesView extends GetView<ClassesController> {
  const ClassesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(
        height: Get.height,
        decoration: BoxDecoration(
          // color: AppColors.white,
            image: DecorationImage(
                image: AssetImage('images/bg.jpg'),
                fit: BoxFit.fill,
              opacity: 0.2
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding:  EdgeInsets.only(top: Get.height/20,left: 20,right: 20),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.getClass.length,
          
                    itemBuilder: (_,i){
                  return Column(
                    children: [
                      i==0?Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(top: Get.height/55,left: 20,right: 20),
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
                                  itemCount: controller.getClass.length,
                                    shrinkWrap: true,
                                    itemBuilder: (_,n){
                                  return n<=4?Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            if(controller.getClass[n]=='NUR'){
                                              controller.getSubjects.clear();

                                              controller.getSubjects=[
                                                {"name":'ClapClap Kit-A',
                                                  'link':"",
                                                },
                                                {"name":'My Alphabet A to Z',
                                                  'link':"https://newgenbookspvtltd.com/E-books/PDF/Clap_Clap-Nursery(Kit-A)/My_Alphabet_A_to_Z/index.html",
                                                },
                                                {"name":'Writing Skillbook (Capital Letter)',
                                                  "link":"https://newgenbookspvtltd.com/E-books/PDF/Clap_Clap-Nursery(Kit-A)/Writing_Skillbook_(Capital-Letter)/index.html"},
                                                {"name":'Aao Sikhe K, Kh, G',
                                                  "link":"https://newgenbookspvtltd.com/E-books/PDF/Clap_Clap-Nursery(Kit-A)/Aao_Sikhe_K_Kh_G/index.html"},
                                                {"name":'Akshar Lekhan',
                                                  "link":"https://newgenbookspvtltd.com/E-books/PDF/Clap_Clap-Nursery(Kit-A)/Akshar_Lekhan/index.html"},
                                                {"name":'Numbers 1 to 100',
                                                  "link":"https://newgenbookspvtltd.com/E-books/PDF/Clap_Clap-Nursery(Kit-A)/Numbers_1_to_100/index.html"},
                                                {"name":'Rhymes & Nanhe Geet - A',
                                                  "link":"https://newgenbookspvtltd.com/E-books/PDF/Clap_Clap-Nursery(Kit-A)/Rhymes_&_Nanhe_Geet-A_(with_Activities_and_Stories)/index.html"},
                                                {"name":'Drawing Skillbook - A',
                                                  "link":"https://newgenbookspvtltd.com/E-books/PDF/Clap_Clap-Nursery(Kit-A)/Drawing_Skillbook-A/index.html"},
                                                {"name":'Colours & Craft - A',
                                                  "link":""},
                                              ];
                                              Map map={
                                                "list": controller.getSubjects,
                                                "class":'NURSERY'
                                              };
                                              Get.toNamed(Routes.SUBJECT,arguments:map);
          
                                            }
                                            else if(controller.getClass[i]=='LKG'){
                                              Map map={
                                                "list": controller.getSubjects,
                                                "class":'LKG'
                                              };

                                            }else if(controller.getClass[n]=='UKG'){
                                              Map map={
                                                "list": controller.getSubjects,
                                                "class":'UKG'
                                              };
                                            }else if(controller.getClass[n]=='Class 1'){
                                              Map map={
                                                "list": controller.getSubjects,
                                                "class":'Class 1'
                                              };
                                            }else if(controller.getClass[n]=='Class 2'){
                                              Map map={
                                                "list": controller.getSubjects,
                                                "class":'Class 2'
                                              };
                                            }
                                          },
                                          child: Container(
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text(controller.getClass[n],style: Utils.text16SPMedium()),
                                            ),
                                          ),
                                        ),
                                        n<4?Row(
                                          children: List.generate(150~/2, (index) => Expanded(
                                            child: Container(
                                              color: index%2==0?Colors.transparent
                                                  :Colors.grey,
                                              height: 0.5,
                                            ),
                                          )),
                                        ):SizedBox.shrink(),
                                      ],
                                    ),
                                  ):SizedBox.shrink();
                                }),
                              ),
                            ),
                          ),
                         Container(
                           height: Get.height/30,
                           width:Get.width/2,
                           decoration: BoxDecoration(
                             color: AppColors.kedback,
                             boxShadow: [BoxShadow(
                               color: AppColors.grey.withOpacity(0.2),
                               blurRadius: 5,
                               offset: Offset(
                                 0,5
                               )
                             )],
                             borderRadius: BorderRadius.circular(7)
                           ),
                           child: Center(
                             child: Text("Foundation stage".toUpperCase(),
                             style: TextStyle(
                               color: AppColors.white,
          
                               letterSpacing: 1.5
                             ),),
                           ),
                         ),
                        ],
                      )
          
                          :i==1?Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(top: Get.height/20,left: 20,right: 20),
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
                                    itemCount: controller.getClass.length,
                                    shrinkWrap: true,
                                    itemBuilder: (_,n){
                                      return n<=4?SizedBox.shrink()
                                          :n<=7?Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(4.0),
                                                child: Column(
                                              children: [
                                                InkWell(
                                                  onTap: (){
                                                    if(controller.getClass[n]=='Class 3'){
                                                      Map map={
                                                        "list": controller.getSubjects,
                                                        "class":'Class 3'
                                                      };

                                                    }
                                                    else if(controller.getClass[i]=='Class 4'){
                                                      Map map={
                                                        "list": controller.getSubjects,
                                                        "class":'Class 4'
                                                      };
                                                    }else if(controller.getClass[n]=='Class 5'){
                                                      Map map={
                                                        "list": controller.getSubjects,
                                                        "class":'Class 5'
                                                      };
                                                    }
                                                  },
                                                  child: Container(
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Text(controller.getClass[n],style: Utils.text16SPMedium()),
                                                    ),
                                                  ),
                                                ),
                                                n<4?Row(
                                                  children: List.generate(150~/2, (index) => Expanded(
                                                    child: Container(
                                                      color: index%2==0?Colors.transparent
                                                          :Colors.grey,
                                                      height: 0.5,
                                                    ),
                                                  )),
                                                ):SizedBox.shrink(),
                                              ],
                                                                                      ),
                                                                                    ),
                                              n<7?Row(
                                                children: List.generate(150~/2, (index) => Expanded(
                                                  child: Container(
                                                    color: index%2==0?Colors.transparent
                                                        :Colors.grey,
                                                    height: 0.5,
                                                  ),
                                                )),
                                              ):SizedBox.shrink(),
                                            ],
                                          ):SizedBox.shrink();
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
                                  color: AppColors.kedback1,
                                  boxShadow: [BoxShadow(
                                      color: AppColors.grey.withOpacity(0.2),
                                      blurRadius: 5,
                                      offset: Offset(
                                          0,5
                                      )
                                  )],
                                  borderRadius: BorderRadius.circular(7)
                              ),
                              child: Center(
                                child: Text("preparatory stage".toUpperCase(),
                                  style: TextStyle(
                                      color: AppColors.white,

                                      letterSpacing: 1.5
                                  ),),
                              ),
                            ),
                          ),
                        ],
                      )
                          :i==2?Stack(
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
                                    itemCount: controller.getClass.length,
                                    shrinkWrap: true,
                                    itemBuilder: (_,n){
                                      return n<=4?SizedBox.shrink()
                                          :n<=7?SizedBox.shrink()
                                          :Column(
                                            children: [
                                              Padding(
                                                                                      padding: const EdgeInsets.all(4.0),
                                                                                      child: Column(
                                              children: [
                                                InkWell(
                                                  onTap: (){
                                                    if(controller.getClass[n]=='Class 6'){
                                                      Map map={
                                                        "list": controller.getSubjects,
                                                        "class":'Class 6'
                                                      };

                                                    }
                                                    else if(controller.getClass[i]=='Class 7'){
                                                      Map map={
                                                        "list": controller.getSubjects,
                                                        "class":'Class 7'
                                                      };
                                                    }else if(controller.getClass[n]=='Class 8'){
                                                      Map map={
                                                        "list": controller.getSubjects,
                                                        "class":'Class 8'
                                                      };
                                                    }
                                                  },
                                                  child: Container(
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Text(controller.getClass[n],style: Utils.text16SPMedium()),
                                                    ),
                                                  ),
                                                ),
                                                n<4?Row(
                                                  children: List.generate(150~/2, (index) => Expanded(
                                                    child: Container(
                                                      color: index%2==0?Colors.transparent
                                                          :Colors.grey,
                                                      height: 0.5,
                                                    ),
                                                  )),
                                                ):SizedBox.shrink(),
                                              ],
                                                                                      ),
                                                                                    ),
                                              n<10?Row(
                                                children: List.generate(150~/2, (index) => Expanded(
                                                  child: Container(
                                                    color: index%2==0?Colors.transparent
                                                        :Colors.grey,
                                                    height: 0.5,
                                                  ),
                                                )),
                                              ):SizedBox.shrink(),
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
                              child: Center(
                                child: Text("Middle  stage".toUpperCase(),
                                  style: TextStyle(
                                      color: AppColors.white,

                                      letterSpacing: 1.5
                                  ),),
                              ),
                            ),
                          ),
                        ],
                      ):SizedBox.shrink(),
                    ],
                  );
                }),
              )
            ],
          ),
        ),
      )
    );
  }
}

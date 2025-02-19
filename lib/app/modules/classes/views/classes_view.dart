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
                                                  'Ebook_link':"",
                                                  'Animation_link':"",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'My Alphabet A to Z',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/Clap_Clap-Nursery(Kit-A)/My_Alphabet_A_to_Z/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeXX_auHpEqkPYhaQnoC3WdG",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/PDF/Clap_Clap-Nursery(Kit-A)/My_Alphabet_A_to_Z/IE/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Writing Skillbook (Capital Letter)',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/Clap_Clap-Nursery(Kit-A)/Writing_Skillbook_(Capital-Letter)/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeXX_auHpEqkPYhaQnoC3WdG",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Aao Sikhe K, Kh, G',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/Clap_Clap-Nursery(Kit-A)/Aao_Sikhe_K_Kh_G/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeXX_auHpEqkPYhaQnoC3WdG",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/PDF/Clap_Clap-Nursery(Kit-A)/Aao_Sikhe_K_Kh_G/IE/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Akshar Lekhan',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/Clap_Clap-Nursery(Kit-A)/Akshar_Lekhan/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeXX_auHpEqkPYhaQnoC3WdG",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",

                                                },
                                                {"name":'Numbers 1 to 100',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/Clap_Clap-Nursery(Kit-A)/Numbers_1_to_100/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeXX_auHpEqkPYhaQnoC3WdG",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/PDF/Clap_Clap-Nursery(Kit-A)/Numbers_1_to_100/IE/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Rhymes & Nanhe Geet - A',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/Clap_Clap-Nursery(Kit-A)/Rhymes_&_Nanhe_Geet-A_(with_Activities_and_Stories)/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeXX_auHpEqkPYhaQnoC3WdG",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",

                                                },
                                                {"name":'Drawing Skillbook - A',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/Clap_Clap-Nursery(Kit-A)/Drawing_Skillbook-A/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeXX_auHpEqkPYhaQnoC3WdG",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",

                                                },
                                                {"name":'Colours & Craft - A',
                                                  "link":""},
                                              ];
                                              Map map={
                                                "list": controller.getSubjects,
                                                "class":'NURSERY'
                                              };
                                              Get.toNamed(Routes.SUBJECT,arguments:map);
          
                                            }
                                            else if(controller.getClass[n]=='LKG'){
                                              controller.getSubjects.clear();

                                              controller.getSubjects=[
                                                {"name":'ClapClap Kit-B',
                                                  'Ebook_link':"",
                                                  'Animation_link':"",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'English Skillbook (Pre Primer)',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-PrePrimer(Kit-B)LKG/English_Skillbook_(Pre-Primer)/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUhXV_JzCuek_H5SeqB25hX",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-PrePrimer(Kit-B)LKG/English_Skillbook_(Pre-Primer)/IE/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Writing Skillbook (Alphabet & Words)',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-PrePrimer(Kit-B)LKG/Writing_Skillbook_(Alphabet_&_Words)/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUhXV_JzCuek_H5SeqB25hX",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Aao Sikhe Shabad',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-PrePrimer(Kit-B)LKG/Aao_Sikhe_Shabad/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUhXV_JzCuek_H5SeqB25hX",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-PrePrimer(Kit-B)LKG/Aao_Sikhe_Shabad/IE/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Shabad Lekhan',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-PrePrimer(Kit-B)LKG/Shabad_Lekhan/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUhXV_JzCuek_H5SeqB25hX",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Mathematics Skillbook (Pre Primer)',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-PrePrimer(Kit-B)LKG/Mathematics_Skillbook_(Pre-Primer)/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUhXV_JzCuek_H5SeqB25hX",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-PrePrimer(Kit-B)LKG/Mathematics_Skillbook_(Pre-Primer)/IE/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Rhymes & Nanhe Geet - B',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-PrePrimer(Kit-B)LKG/Rhymes&Nanhe_Geet-B_(with_Activities_and_Stories)/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUhXV_JzCuek_H5SeqB25hX",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Drawing Skillbook - B',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-PrePrimer(Kit-B)LKG/Drawing_Skillbook-B/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUhXV_JzCuek_H5SeqB25hX",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'My Picture Book',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-PrePrimer(Kit-B)LKG/My_Big_Picture_Book/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUhXV_JzCuek_H5SeqB25hX",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Colours & Craft - B',
                                                  'Ebook_link':"",
                                                  'Animation_link':"",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Learn to Write Cursive-A ',
                                                  'Ebook_link':"",
                                                  'Animation_link':"",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                              ];

                                              Map map={
                                                "list": controller.getSubjects,
                                                "class":'LKG'
                                              };
                                              Get.toNamed(Routes.SUBJECT,arguments:map);
                                            }
                                            else if(controller.getClass[n]=='UKG'){
                                              controller.getSubjects.clear();
                                              controller.getSubjects=[
                                                {"name":'ClapClap Kit-C',
                                                  'Ebook_link':"",
                                                  'Animation_link':"",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'English Skillbook (Primer)',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-Primer(Kit-C)UKG/English_Skillbook_(Primer)/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWX36uSk17PHEnwAT5bRxfc",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-Primer(Kit-C)UKG/English_Skillbook_(Primer)/IE/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Writing Skillbook (Cur. Cap. & Small)',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-Primer(Kit-C)UKG/Writing_Skillbook_(Cursive_Capital&Small)/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWX36uSk17PHEnwAT5bRxfc",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Aao Sikhe Swar',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-Primer(Kit-C)UKG/Aao_Sikhe_Swar/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWX36uSk17PHEnwAT5bRxfc",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-Primer(Kit-C)UKG/Aao_Sikhe_Swar/IE/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Swar Lekhan',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-Primer(Kit-C)UKG/Swar_Lekhan/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWX36uSk17PHEnwAT5bRxfc",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Mathematics Skillbook (Primer)',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-Primer(Kit-C)UKG/Mathematics_Skillbook_(Primer)/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWX36uSk17PHEnwAT5bRxfc",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-Primer(Kit-C)UKG/Mathematics_Skillbook_(Primer)/IE/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Rhymes & Nanhe Geet - C',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-Primer(Kit-C)UKG/Rhymes&Nanhe_Geet-C_(with_Activities_and_Stories)/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWX36uSk17PHEnwAT5bRxfc",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Drawing Skillbook - C',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-Primer(Kit-C)UKG/Drawing_Skillbook-C/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWX36uSk17PHEnwAT5bRxfc",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Table Book',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-Primer(Kit-C)UKG/Table_Book/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWX36uSk17PHEnwAT5bRxfc",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Me and My surroundings (Primer)',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-Primer(Kit-C)UKG/Me_and_My_surroundings_(Primer)/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWX36uSk17PHEnwAT5bRxfc",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/PDF/ClapClap-Primer(Kit-C)UKG/Me_and_My_surroundings_(Primer)/IE/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Colours & Craft - C',
                                                  'Ebook_link':"",
                                                  'Animation_link':"",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Learn to Write Cursive-B',
                                                  'Ebook_link':"",
                                                  'Animation_link':"",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                              ];
                                              Map map={
                                                "list": controller.getSubjects,
                                                "class":'UKG'
                                              };
                                              Get.toNamed(Routes.SUBJECT,arguments:map);
                                            }
                                            else if(controller.getClass[n]=='Class 1'){
                                              controller.getSubjects.clear();

                                              controller.getSubjects=[
                                                {"name":'Malti Meri Hindi Pathya Pustak - 1',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/Malti-Hindi-Pathya-Pustak-1/e-book/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeV0Uf89lzabQFJeVvg6C0Ip",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Malti-Hindi-Pathya-Pustak-1/int_e-book/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Easy Mathematics - 1',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/Math-Matrix-2-1/e-book/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeVYpnyPlG58hS9l15XHOGoZ",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Math-Matrix-2-1/int_e-book/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Social Science - 1',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/Social-Science/grade-1/e-book/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeX3b5xPq5-bt7ZnMGvTSoLU",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Social-Science/grade-1/int_e-book/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Kites : A Multi Skill Eng. Coursebook - 1',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/Kites-(A-Multi-skill-English-Courcebook)-1/e-book/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeXSPWNsJV1np2QNMCRA5utV",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Kites-(A-Multi-skill-English-Courcebook)-1/int_e-book/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Science Today - 1',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/Science-Today/grade-1/e-book/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeVbAeAx3-TwnpxRT9BNSSkJ",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Science-Today/grade-1/int_e-book/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Easy English Grammar - 1',
                                                  'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Easy-English-Grammar/Grade-1/e-book/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWNtMZ2zJe7DqVgNNCKz6Lg",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'G.K. Matrix 2.0 - 1',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/GK-Matrix-2-1/e-book/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeXyHWevFvI524FLGJjba5i4",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/GK-Matrix-2-1/int_e-book/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Colours & Craft - 1',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/Colours-n-Craft-Class-1/e-book/index.html",
                                                  'Animation_link':"",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Learn to Write Cursive - 1',
                                                  'Ebook_link':"",
                                                  'Animation_link':"",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'SARAL HINDI VYAKARAN - 1',
                                                  'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Saral-Hindi-Vyakaran/Grade-1/e-book/index.html",
                                                  'Animation_link':"",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",

                                                },
                                                {
                                                  "name":'Sulekh Mala - 1',
                                                  'Ebook_link':"",
                                                  'Animation_link':"",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                  {"name":'Environmental Studies - 1',
                                                  'Ebook_link':"",
                                                  'Animation_link':"",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                  {"name":'A Text Book Of Computer Science - 1',
                                                  'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Clap-Clap-Desktop-Computer-Science/Grade-1/e-book/index.html",
                                                  'Animation_link':"",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },



                                              ];
                                              Map map={
                                                "list": controller.getSubjects,
                                                "class":'Class 1'
                                              };
                                              Get.toNamed(Routes.SUBJECT,arguments:map);
                                            }
                                            else if(controller.getClass[n]=='Class 2'){
                                              controller.getSubjects.clear();

                                              controller.getSubjects=[
                                                {"name":'Malti Meri Hindi Pathya Pustak - 2',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/Malti-Hindi-Pathya-Pustak-2/e-book/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWnknyKv82_1rQvuUlP0Anz",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Malti-Hindi-Pathya-Pustak-2/int_e-book/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Easy Mathematics - 2',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/Math-Matrix-2-2/e-book/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUYHkVP_kru6N533A_6RdRD",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Math-Matrix-2-2/int_e-book/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Social Science - 2',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/Social-Science/grade-2/e-book/index.html",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Social-Science/grade-2/int_e-book/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeVKzkBVUipG0w3tVrqJ3bf_",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Kites : A Multi Skill Eng. Coursebook - 2',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/Kites-(A-Multi-skill-English-Courcebook)-2/e-book/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeVUCuSxkPgBCgSkrQln_Pvz",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Kites-(A-Multi-skill-English-Courcebook)-2/int_e-book/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Science Today - 2',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/Science-Today/grade-2/e-book/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeX42qYWH3H6q8c87jgjjmG0",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Science-Today/grade-2/int_e-book/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Easy English Grammar - 2',
                                                  'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Easy-English-Grammar/Grade-2/e-book/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeVpuh791DTBL8o-xfML2GFO",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'G.K. Matrix 2.0 - 2',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/GK-Matrix-2-2/e-book/index.html",
                                                  'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWJPHfg7rMAUTSQYacu5Oa3",
                                                  'Interactivity_link':"https://newgenbookspvtltd.com/E-books/GK-Matrix-2-2/int_e-book/index.html",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Colours & Craft - 2',
                                                  'Ebook_link':"https://newgenbookspvtltd.com/E-books/Colours-n-Craft-Class-2/e-book/index.html",
                                                  'Animation_link':"",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Learn to Write Cursive - 2',
                                                  'Ebook_link':"",
                                                  'Animation_link':"",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'SARAL HINDI VYAKARAN - 2',
                                                  'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Saral-Hindi-Vyakaran/Grade-2/e-book/index.html",
                                                  'Animation_link':"",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Sulekh Mala - 2',
                                                  'Ebook_link':"",
                                                  'Animation_link':"",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'Environmental Studies - 2',
                                                  'Ebook_link':"",
                                                  'Animation_link':"",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },
                                                {"name":'A Text Book Of Computer Science - 2',
                                                  'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Clap-Clap-Desktop-Computer-Science/Grade-2/e-book/index.html",
                                                  'Animation_link':"",
                                                  'Interactivity_link':"",
                                                  'TG_link':"",
                                                  'Assessment_link':"",
                                                },


                                              ];
                                              Map map={
                                                "list": controller.getSubjects,
                                                "class":'Class 2'
                                              };
                                              Get.toNamed(Routes.SUBJECT,arguments:map);
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
                                                      controller.getSubjects.clear();

                                                      controller.getSubjects=[
                                                        {"name":'Malti Meri Hindi Pathya Pustak - 3',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Malti-Hindi-Pathya-Pustak-3/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUXk9lIcFEiKG1sZHSbYEd8",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Malti-Hindi-Pathya-Pustak-3/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Easy Mathematics - 3',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Math-Matrix-2-3/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUc7zomG3BeROphb2fih8cZ",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Math-Matrix-2-3/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Social Science - 3',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Social-Science/grade-3/e-book/index.html",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Social-Science/grade-3/int_e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUJZS14SIcvQJv2CSX6Ys4U",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Kites : A Multi Skill Eng. Coursebook - 3',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Kites-(A-Multi-skill-English-Courcebook)-3/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeVUCuSxkPgBCgSkrQln_Pvz",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Kites-(A-Multi-skill-English-Courcebook)-3/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Science Today - 3',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Science-Today/grade-3/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWj1eVyupgG5rdj1UBEiyq1",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Science-Today/grade-3/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Easy English Grammar - 3',
                                                          'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Easy-English-Grammar/Grade-3/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWJ946aqrMiNfjfHfIkAB9s",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'G.K. Matrix 2.0 - 3',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/GK-Matrix-2-3/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeU23WVK6I0laGk0r3n-fQKm",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/GK-Matrix-2-3/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Colours & Craft - 3',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Colours-n-Craft-Class-3/e-book/index.html",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Learn to Write Cursive - 3',
                                                          'Ebook_link':"",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'SARAL HINDI VYAKARAN - 3',
                                                          'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Saral-Hindi-Vyakaran/Grade-3/e-book/index.html",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Sulekh Mala - 3',
                                                          'Ebook_link':"",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Environmental Studies - 3',
                                                          'Ebook_link':"",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'A Text Book Of Computer Science - 3',
                                                          'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Clap-Clap-Desktop-Computer-Science/Grade-3/e-book/index.html",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },


                                                      ];
                                                      print("Class 3");
                                                      Map map={
                                                        "list": controller.getSubjects,
                                                        "class":'Class 3'
                                                      };
                                                      Get.toNamed(Routes.SUBJECT,arguments:map);
                                                    }else if(controller.getClass[n]=='Class 4'){
                                                      controller.getSubjects.clear();

                                                      controller.getSubjects=[
                                                        {"name":'Malti Meri Hindi Pathya Pustak - 4',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Malti-Hindi-Pathya-Pustak-4/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWMq5w0mLhSLufu0RsxU8nh",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Malti-Hindi-Pathya-Pustak-4/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Easy Mathematics - 4',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Math-Matrix-2-4/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWY1u9v6j7mqIEc6eH5eM7c",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Math-Matrix-2-4/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Social Science - 4',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Social-Science/grade-4/e-book/index.html",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Social-Science/grade-4/int_e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeU_MrJlYBRT6o5KitcLoZHC",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Kites : A Multi Skill Eng. Coursebook - 4',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Kites-(A-Multi-skill-English-Courcebook)-4/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeVUXMONZse1o7wn_nEeq-pW",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Kites-(A-Multi-skill-English-Courcebook)-4/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Science Today - 4',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Science-Today/grade-4/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeX7yMG9cUq9jLsCJ_8MdYfc",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Science-Today/grade-4/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Easy English Grammar - 4',
                                                          'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Easy-English-Grammar/Grade-4/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUAQVgg5wYIajgZxLE-Slv_",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'G.K. Matrix 2.0 - 4',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/GK-Matrix-2-4/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWMeL_sphLwVQR_4KI_cHzK",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/GK-Matrix-2-4/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Colours & Craft - 4',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Colours-n-Craft-Class-4/e-book/index.html",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Learn to Write Cursive - 4',
                                                          'Ebook_link':"",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'SARAL HINDI VYAKARAN - 4',
                                                          'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Saral-Hindi-Vyakaran/Grade-4/e-book/index.html",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Sulekh Mala - 4',
                                                          'Ebook_link':"",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Environmental Studies - 4',
                                                          'Ebook_link':"",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'A Text Book Of Computer Science - 4',
                                                          'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Clap-Clap-Desktop-Computer-Science/Grade-4/e-book/index.html",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },


                                                      ];
                                                      Map map={
                                                        "list": controller.getSubjects,
                                                        "class":'Class 4'
                                                      };
                                                      Get.toNamed(Routes.SUBJECT,arguments:map);
                                                    }else if(controller.getClass[n]=='Class 5'){
                                                      controller.getSubjects.clear();

                                                      controller.getSubjects=[
                                                        {"name":'Malti Meri Hindi Pathya Pustak - 5',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Malti-Hindi-Pathya-Pustak-5/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWGo3HHty04FnO4yNgZG3mn",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Malti-Hindi-Pathya-Pustak-5/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Easy Mathematics - 5',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Math-Matrix-2-5/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeV5vD8mTx-ld_2NjveK_hYT",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Math-Matrix-2-5/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Social Science - 5',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Social-Science/grade-5/e-book/index.html",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Social-Science/grade-5/int_e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeV2Q-lP3wWJLzxSVfAb4El8",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Kites : A Multi Skill Eng. Coursebook - 5',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Kites-(A-Multi-skill-English-Courcebook)-5/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWvnvQ4TarA6hxyOuJjSLS2",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Kites-(A-Multi-skill-English-Courcebook)-5/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Science Today - 5',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Science-Today/grade-5/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeXtzyu42ksQ15JOuxmQ2NzR",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Science-Today/grade-5/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Easy English Grammar - 5',
                                                          'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Easy-English-Grammar/Grade-5/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUBQ5yqV3FH7tl7jZUrbG8j",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'G.K. Matrix 2.0 - 5',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/GK-Matrix-2-5/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeVFwKjmvV-2d8m5E548XYsY",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/GK-Matrix-2-5/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Colours & Craft - 5',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Colours-n-Craft-Class-5/e-book/index.html",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Learn to Write Cursive - 5',
                                                          'Ebook_link':"",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'SARAL HINDI VYAKARAN - 5',
                                                          'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Saral-Hindi-Vyakaran/Grade-5/e-book/index.html",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Sulekh Mala - 5',
                                                          'Ebook_link':"",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Environmental Studies - 5',
                                                          'Ebook_link':"",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'A Text Book Of Computer Science - 5',
                                                          'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Clap-Clap-Desktop-Computer-Science/Grade-5/e-book/index.html",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },


                                                      ];
                                                      Map map={
                                                        "list": controller.getSubjects,
                                                        "class":'Class 5'
                                                      };
                                                      Get.toNamed(Routes.SUBJECT,arguments:map);
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
                                                      controller.getSubjects.clear();

                                                      controller.getSubjects=[
                                                        {"name":'Malti Meri Hindi Pathya Pustak - 6',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Malti-Hindi-Pathya-Pustak-6/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUt2M-HADDLm69pHM56LIKB",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Malti-Hindi-Pathya-Pustak-6/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Easy Mathematics - 6',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Math-Matrix-2-6/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeVGmG165VlRm41mcOjTmT0j",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Math-Matrix-2-6/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Social Science - 6',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Social-Science/grade-6/e-book/index.html",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Social-Science/grade-6/int_e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeXvOIvZHULt1LM5OyZUZpnq",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Kites : A Multi Skill Eng. Coursebook - 6',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Kites-(A-Multi-skill-English-Courcebook)-6/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeXdm6oYItRsFFsR3NgE7bz_",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Kites-(A-Multi-skill-English-Courcebook)-6/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Science Today - 6',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Science-Today/grade-6/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeVgFzh0HMTzDLoEfmrs4Qcw",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Science-Today/grade-6/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Easy English Grammar - 6',
                                                          'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Easy-English-Grammar/Grade-6/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeXlwGE-ZnrkVpqmW2jTx6qs",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'G.K. Matrix 2.0 - 6',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/GK-Matrix-2-6/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUpEJmrLAlZH6q7UjEF0JFW",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/GK-Matrix-2-6/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Colours & Craft - 6',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Colours-n-Craft-Class-6/e-book/index.html",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'SARAL HINDI VYAKARAN - 6',
                                                          'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Saral-Hindi-Vyakaran/Grade-6/e-book/index.html",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'A Text Book Of Computer Science - 6',
                                                          'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Clap-Clap-Desktop-Computer-Science/Grade-6/e-book/index.html",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },


                                                      ];
                                                      Map map={
                                                        "list": controller.getSubjects,
                                                        "class":'Class 6'
                                                      };
                                                      Get.toNamed(Routes.SUBJECT,arguments:map);
                                                    }
                                                    else if(controller.getClass[n]=='Class 7'){
                                                      controller.getSubjects.clear();

                                                      controller.getSubjects=[
                                                        {"name":'Malti Meri Hindi Pathya Pustak - 7',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Malti-Hindi-Pathya-Pustak-7/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeXGzcnRr9XrIF9mAI82pC0l",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Malti-Hindi-Pathya-Pustak-7/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Easy Mathematics - 7',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Math-Matrix-2-7/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeU2Y8Qnw7gK6R7H2NroUVVn",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Math-Matrix-2-7/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Social Science - 7',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Social-Science/grade-7/e-book/index.html",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Social-Science/grade-7/int_e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeU6VVuxZpbwxvTUg3_ogeBP",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Kites : A Multi Skill Eng. Coursebook - 7',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Kites-(A-Multi-skill-English-Courcebook)-7/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUAkNZleY0I8muXEV1MSGqy",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Kites-(A-Multi-skill-English-Courcebook)-7/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Science Today - 7',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Science-Today/grade-7/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUqsDARNkc_SkFr91qtZdOg",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Science-Today/grade-7/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Easy English Grammar - 7',
                                                          'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Easy-English-Grammar/Grade-7/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeW6Setg0-Bm6N6O0OSiRPkg",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'G.K. Matrix 2.0 - 7',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/GK-Matrix-2-7/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUAvmdQlaY1xTPFJQT3EM_T",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/GK-Matrix-2-7/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Colours & Craft - 7',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Colours-n-Craft-Class-7/e-book/index.html",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'SARAL HINDI VYAKARAN - 7',
                                                          'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Saral-Hindi-Vyakaran/Grade-7/e-book/index.html",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'A Text Book Of Computer Science - 7',
                                                          'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Clap-Clap-Desktop-Computer-Science/Grade-7/e-book/index.html",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },


                                                      ];
                                                      Map map={
                                                        "list": controller.getSubjects,
                                                        "class":'Class 7'
                                                      };
                                                      Get.toNamed(Routes.SUBJECT,arguments:map);
                                                    }
                                                    else if(controller.getClass[n]=='Class 8'){
                                                      controller.getSubjects.clear();

                                                      controller.getSubjects=[
                                                        {"name":'Malti Meri Hindi Pathya Pustak - 8',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Malti-Hindi-Pathya-Pustak-8/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeXDQZNehv5UKqwpGjXmwlrV",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Malti-Hindi-Pathya-Pustak-8/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Easy Mathematics - 8',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Math-Matrix-2-8/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeXQLcs7LKLfkrIwsO8SPIr_",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Math-Matrix-2-8/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Social Science - 8',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Social-Science/grade-8/e-book/index.html",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Social-Science/grade-8/int_e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeVoppc7ITCPJIkupwysAIlg",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Kites : A Multi Skill Eng. Coursebook - 8',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Kites-(A-Multi-skill-English-Courcebook)-8/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeUNJ2gFvAlXBu3-osLL98-X",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Kites-(A-Multi-skill-English-Courcebook)-8/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Science Today - 8',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Science-Today/grade-8/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeXKveDgfmYQaG-j395VG5-e",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/Science-Today/grade-8/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Easy English Grammar - 8',
                                                          'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Easy-English-Grammar/Grade-8/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeWgsQWDPozF6VURPA5RWMOS",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'G.K. Matrix 2.0 - 8',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/GK-Matrix-2-8/e-book/index.html",
                                                          'Animation_link':"https://www.youtube.com/playlist?list=PLMWIX0kIaIeXW6cUBi8-C0e5V4xopFtqF",
                                                          'Interactivity_link':"https://newgenbookspvtltd.com/E-books/GK-Matrix-2-8/int_e-book/index.html",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'Colours & Craft - 8',
                                                          'Ebook_link':"https://newgenbookspvtltd.com/E-books/Colours-n-Craft-Class-8/e-book/index.html",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'SARAL HINDI VYAKARAN - 8',
                                                          'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Saral-Hindi-Vyakaran/Grade-8/e-book/index.html",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },
                                                        {"name":'A Text Book Of Computer Science - 8',
                                                          'Ebook_link':"https://www.newgenbookspvtltd.com/E-books/Clap-Clap-Desktop-Computer-Science/Grade-8/e-book/index.html",
                                                          'Animation_link':"",
                                                          'Interactivity_link':"",
                                                          'TG_link':"",
                                                          'Assessment_link':"",
                                                        },


                                                      ];
                                                      Map map={
                                                        "list": controller.getSubjects,
                                                        "class":'Class 8'
                                                      };
                                                      Get.toNamed(Routes.SUBJECT,arguments:map);
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

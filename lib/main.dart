import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'common/api/utils/initializer.dart';
import 'common/appColors.dart';


void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  Initializer.instance.init(() async {
    runApp(GetMaterialApp(
      title: "Application",
      builder: FToastBuilder(),
      initialRoute: AppPages.INITIAL,
      textDirection: TextDirection.ltr,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),);
  });

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: AppColors.customtrans,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(
      debug: true // optional: set false to disable printing logs to console
  );
  // await Firebase.initializeApp();
  //
  // await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
  //   alert: true,
  //   badge: true,
  //   sound: true,
  // );
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();


}

import 'dart:async';
import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../../../common/api/data/all_api_url.dart';
import '../../../../common/constant/prefs.dart';
import '../../../../common/storage/storage.dart';
import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController
  final RxBool _loading = false.obs;

  bool get loading => _loading.value;

  set loading(bool v) => _loading.value = v;

  @override
  void onInit() async {
    super.onInit();
    fToast = FToast();
    // if you want to use context from globally instead of content we need to pass navigatorKey.currentContext!
    fToast!.init(Get.context!);

  }

  @override
  void onReady() {
    super.onReady();
    gotoLoginScreen();
  }

  Future<bool> willPopCallback() async {
    return false;
  }

  void gotoLoginScreen() {
    Future.delayed(
      const Duration(milliseconds: 800),
    ).then(
          (value) =>Get.offAllNamed(Routes.CLASSES)
    );
  }

}
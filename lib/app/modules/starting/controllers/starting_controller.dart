import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../../../common/api/data/all_api_url.dart';
import '../../../routes/app_pages.dart';

class StartingController extends GetxController {
  //TODO: Implement StartingController
  final RxBool _loading = false.obs;

  bool get loading => _loading.value;

  set loading(bool v) => _loading.value = v;

  @override
  void onInit() {
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

  @override
  void onClose() {
    super.onClose();
  }
  void gotoLoginScreen() {
    Future.delayed(
      const Duration(milliseconds:50),
    ).then(
            (value) =>Get.offAllNamed(Routes.SPLASH)
    );
  }

}

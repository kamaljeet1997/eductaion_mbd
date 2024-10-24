import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final RxList<String> _getClass = <String>[].obs;
  List<String> get getClass => _getClass.value;
  set getClass(List<String> v) => _getClass.assignAll(v);
  final RxList<dynamic> _getDynamicData= <dynamic>[].obs;
  List<dynamic> get getDynamicData => _getDynamicData.value;
  set getDynamicData(List<dynamic> v) => _getDynamicData.assignAll(v);
  Map map=<String,dynamic>{};
  @override
  void onInit() {
    super.onInit();
    getDynamicData=[
      {"module_name":"E-book","icon":"images/ebook.png",}, {"module_name":"Assessment","icon":"images/assessment.png",}, {"module_name":"Interactivity","icon":"images/intreactive.png",}, {"module_name":"Animation","icon":"images/video.png",},{"module_name":"Test Generator","icon":"images/tg.png",},
    ];
    if(Get.arguments!=null){
      map=Get.arguments;
      print('Map $map');
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}

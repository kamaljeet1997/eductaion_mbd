import 'package:get/get.dart';

class SubjectController extends GetxController {
  //TODO: Implement SubjectController
  final RxList<dynamic> _getSubjects = <dynamic>[].obs;
  List<dynamic> get getSubjects => _getSubjects.value;
  set getSubjects(List<dynamic> v) => _getSubjects.assignAll(v);


  final RxString _className = ''.obs;
  String get className => _className.value;
  set className (String v) => _className.value = v;

  Map map=<String,dynamic>{};

  @override
  void onInit() {
    super.onInit();
    if(Get.arguments!=null){
      map=Get.arguments;
      getSubjects=map['list'];
      className=map['class'];

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

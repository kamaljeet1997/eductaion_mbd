import 'package:get/get.dart';

class ClassesController extends GetxController {
  //TODO: Implement ClassesController

  final RxList<String> _getClass = <String>[].obs;
  List<String> get getClass => _getClass.value;
  set getClass(List<String> v) => _getClass.assignAll(v);

  final RxList<dynamic> _getSubjects = <dynamic>[].obs;
  List<dynamic> get getSubjects => _getSubjects.value;
  set getSubjects(List<dynamic> v) => _getSubjects.assignAll(v);

  @override
  void onInit() {
    super.onInit();

    getClass=[
      'NUR','LKG','UKG','Class 1','Class 2','Class 3','Class 4','Class 5','Class 6','Class 7','Class 8',
    ];
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

import 'package:get/get.dart';

import '../modules/classes/bindings/classes_binding.dart';
import '../modules/classes/views/classes_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/starting/bindings/starting_binding.dart';
import '../modules/starting/views/starting_view.dart';
import '../modules/subject/bindings/subject_binding.dart';
import '../modules/subject/views/subject_view.dart';
import '../modules/videoplayer/bindings/videoplayer_binding.dart';
import '../modules/videoplayer/views/videoplayer_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.STARTING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.CLASSES,
      page: () => const ClassesView(),
      binding: ClassesBinding(),
    ),
    GetPage(
      name: _Paths.SUBJECT,
      page: () => const SubjectView(),
      binding: SubjectBinding(),
    ),
    GetPage(
      name: _Paths.STARTING,
      page: () => const StartingView(),
      binding: StartingBinding(),
    ),
    GetPage(
      name: _Paths.VIDEOPLAYER,
      page: () =>  VideoplayerView(),
      binding: VideoplayerBinding(),
    ),
  ];
}

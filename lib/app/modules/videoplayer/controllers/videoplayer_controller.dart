import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:video_player/video_player.dart';

// import '../../../../common/api/data/api_helper.dart';
import '../../../../common/storage/storage.dart';
// import '../../../data/models/login.dart';

class VideoplayerController extends GetxController {
  //TODO: Implement VideoplayerController
  final RxString _videolink = "".obs;
  String get videolink => _videolink.value;
  set videolink(String v) => _videolink.value = v;

  final RxBool _fullscreen = false.obs;
  bool get fullscreen => _fullscreen.value;
  set fullscreen(bool v) => _fullscreen.value = v;
  Map map = <String, String>{};
  FlickManager? flickManager;
  VideoPlayerController? videoPlayerController;

  final RxString _video = "".obs;
  String get video => _video.value;
  set video(String v) => _video.value = v;

 final RxString _videos = "".obs;
  String get videos => _videos.value;
  set videos(String v) => _videos.value = v;

  final RxInt _subjectid = 0.obs;
  int get subjectid => _subjectid.value;
  set subjectid(int v) => _subjectid.value = v;

  final RxInt _classid = 0.obs;
  int get classid => _classid.value;
  set classid(int v) => _classid.value = v;

  final RxInt _chapterid= 0.obs;
  int get chapterid => _chapterid.value;
  set chapterid(int v) => _chapterid.value = v;
 final RxString _chapterId= "".obs;
  String get chapterId => _chapterId.value;
  set chapterId(String v) => _chapterId.value = v;

  final RxInt _topicid= 0.obs;
  int get topicid => _topicid.value;
  set topicid(int v) => _topicid.value = v;

  @override
  void onInit() {
    super.onInit();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft
    ]);

    if(Get.arguments!=null){

      map=Get.arguments;
      videolink=map["data"];
      print("aws_url : $videolink");


    }
    if(Orientation.landscape==Orientation.landscape){
      flickManager = FlickManager(
        autoInitialize: true,
        videoPlayerController: VideoPlayerController.network(videolink,

          videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
        ),
        autoPlay: true,
      );
    }

  }



  @override
  void dispose() {
    super.dispose();
    flickManager!.dispose();
    videoPlayerController!.pause();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  void onClose() {
    flickManager!.dispose();
    super.dispose();
  }
  @override
  void onReady() {
    super.onReady();
  }

}

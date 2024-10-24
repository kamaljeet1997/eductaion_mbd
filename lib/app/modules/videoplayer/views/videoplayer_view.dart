// import 'package:erp_school/common/appColors.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
// import 'package:lecle_yoyo_player/lecle_yoyo_player.dart';
import '../../../../common/appColors.dart';
import '../controllers/flick_landscap_controle.dart';
import '../controllers/flick_landscap_controls1.dart';
import '../controllers/videoplayer_controller.dart';

class VideoplayerView extends GetView<VideoplayerController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if(controller.flickManager?.flickControlManager!.isFullscreen==true){
          return true;
        }else{
          SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
          Navigator.pop(context);
          return false;
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            FlickVideoPlayer(
                wakelockEnabled: true,
                flickVideoWithControlsFullscreen: FlickFullScreenToggle(
                  toggleFullscreen: controller.flickManager?.flickControlManager?.toggleFullscreen,
                  enterFullScreenChild:  FlickVideoWithControls(
                    videoFit: BoxFit.contain,
                    controls: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlickLandscapeControls1(),
                    ),
                  ),
                     exitFullScreenChild: FlickVideoWithControls(
                      backgroundColor: Colors.black.withOpacity(0.2),
                      videoFit: BoxFit.contain,
                      controls: FlickLandscapeControls1(
                    ),
                  ),
                ),
                flickManager: controller.flickManager!,
                  preferredDeviceOrientationFullscreen: [
                  DeviceOrientation.landscapeLeft,
                ],
                preferredDeviceOrientation: [DeviceOrientation.landscapeLeft],
                flickVideoWithControls: FlickVideoWithControls(
                  videoFit: BoxFit.contain,
                  controls: FlickLandscapeControls2(
                  ),
                ),
              ),
          // Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: YoYoPlayer(
          //   aspectRatio: 16 / 9,
          //   // Url (Video streaming links)
          //   // 'https://dsqqu7oxq6o1v.cloudfront.net/preview-9650dW8x3YLoZ8.webm',
          //   // "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
          //   // "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8",
          //   url:  "http://digitalcontent.aasoka.com/images/demofiles/radhe-video.m3u8",
          //   ),
          // ),
           
           
           
            Padding(
              padding:EdgeInsets.only(top: Get.height/15, left: Get.width/35),
              child: InkWell(
                onTap: () {
                  if (Orientation.portrait == Orientation.portrait) {
                    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
                    Get.back();
                  }
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                  color: AppColors.white,
                ),
              ),
            ),
          
          
          ],
        ),

      ),
    );
  }
}

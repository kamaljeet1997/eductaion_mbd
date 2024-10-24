// import 'package:erp_school/app/modules/videoplayer/controllers/flick_portrait_controls.dart';
import 'package:education_mbd/app/modules/videoplayer/controllers/flick_portrait_controls.dart';
import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';

/// Default landscape controls.
class FlickLandscapeControls1 extends StatelessWidget {
  const FlickLandscapeControls1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlickPortraitControls1(
      fontSize: 14,
      iconSize: 30,
      progressBarSettings: FlickProgressBarSettings(
        height: 5,
      ),
    );
  }
}

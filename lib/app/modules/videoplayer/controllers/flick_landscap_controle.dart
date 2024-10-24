// import 'package:education_mbd/videoplayer/controllers/flick_portrait_controls.dart';
import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';

import 'flic_initial_landscap.dart';

/// Default landscape controls.
class FlickLandscapeControls2 extends StatelessWidget {
  const FlickLandscapeControls2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlickPortraitControls2(
      fontSize: 14,
      iconSize: 30,
      progressBarSettings: FlickProgressBarSettings(
        height: 5,
      ),
    );
  }
}

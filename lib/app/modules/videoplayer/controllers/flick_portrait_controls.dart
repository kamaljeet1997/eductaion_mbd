import 'package:education_mbd/app/modules/videoplayer/controllers/video_play_toggle.dart';
// import 'package:erp_school/app/modules/videoplayer/controllers/video_play_toggle.dart';
// import 'package:erp_school/common/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:get/get.dart';

import '../../../../common/appColors.dart';
import '../flickk_seek_video_action.dart';

/// Default portrait controls.
class FlickPortraitControls1 extends StatelessWidget {
  const FlickPortraitControls1(
      {Key? key,
        this.iconSize = 20,
        this.fontSize = 12,
        this.progressBarSettings, this.controlManager})
      : super(key: key);

  /// Icon size.
  ///
  /// This size is used for all the player icons.
  final double iconSize;

  /// Font size.
  ///
  /// This size is used for all the text.
  final double fontSize;

  /// [FlickProgressBarSettings] settings.
  final FlickProgressBarSettings? progressBarSettings;
  final FlickControlManager? controlManager;
Future<void> forword(){
  return controlManager!.seekForward(Duration(seconds: 10));
}
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: FlickAutoHideChild(
            child: FlickShowControlsAction(
              child: FlickSeekVideoActions(
                child: Center(
                  child: FlickVideoBuffer(
                    child: FlickPlayToggles(
                          size: 30,
                          color: Colors.white,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: AppColors.header_color,
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: FlickAutoHideChild(
            child: Padding(
              padding:  EdgeInsets.only(left: Get.width/10, right: Get.width/10, bottom: 8),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.header_color,
                  ),
                  height: Get.height/5,
                  child: Padding(
                    padding:  EdgeInsets.only(left:20, right:20, bottom:8, top: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlickVideoProgressBar(
                          flickProgressBarSettings: progressBarSettings,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FlickPlayToggle(
                              size: iconSize,
                            ),
                            SizedBox(
                              width: iconSize / 2,
                            ),
                            FlickSoundToggle(
                              size: iconSize,
                            ),
                            SizedBox(
                              width: iconSize / 2,
                            ),
                            Row(
                              children: <Widget>[
                                FlickCurrentPosition(
                                  fontSize: fontSize,
                                ),
                                FlickAutoHideChild(
                                  child: Text(
                                    ' / ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: fontSize),
                                  ),
                                ),
                                FlickTotalDuration(
                                  fontSize: fontSize,
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            FlickSubtitleToggle(
                              size: iconSize,
                            ),
                            SizedBox(
                              width: iconSize / 2,
                            ),
                            FlickFullScreenToggle(
                              size: iconSize,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

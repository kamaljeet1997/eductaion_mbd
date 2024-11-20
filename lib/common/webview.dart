import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'appColors.dart';


class InAppWebViewContainer extends StatefulWidget {
  final url;
  InAppWebViewContainer(this.url);

  @override
  createState() => _InAppWebViewContainerState(
    this.url,);
}

class _InAppWebViewContainerState extends State<InAppWebViewContainer> {
  final _url;
  final _key = UniqueKey();

  @override
  void initState() {
    super.initState();
    print(_url);

  }
  @override
  dispose(){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }

  _InAppWebViewContainerState(
      this._url);

  @override
  Widget build(BuildContext context) {

    return PopScope(
        canPop: false,
        onPopInvoked: (bool didPop) async {
          if (didPop) {
            return;
          }
        },
        child: SafeArea(
          child: Scaffold(

              body: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: InAppWebView(
                          initialUrlRequest: URLRequest(url: WebUri(_url.toString())),
                          initialSettings: InAppWebViewSettings(
                            javaScriptEnabled: true,
                            supportZoom: false,
                            useOnDownloadStart: true,
                            // disableVerticalScroll: false,
                            // disableHorizontalScroll: true,
                          ),
                          onWebViewCreated: (InAppWebViewController controller) {
                            // _webViewController = controller;
                          },
                          onDownloadStartRequest: (controller, url) async {
                            var ext=await getExternalStorageDirectory();
                            print("onDownloadStart $url");
                            final taskId = await FlutterDownloader.enqueue(
                              url: url.toString(),
                              savedDir: ext!.path,
                              showNotification: true, // show download progress in status bar (for Android)
                              openFileFromNotification: true, // click on notification to open downloaded file (for Android)
                            );
                          },
                        ),
                      ),
                    ],

                  ),

                  Padding(
                    padding:  EdgeInsets.only(left: 2,),
                    child: InkWell(onTap: (){
                      Get.back();
                      if (Orientation.landscape == Orientation.landscape) {
                        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
                      }

                    },child: Container(
                      height:
                      Get.height > 550 ? 50 : 10,
                      width: Get.width/10,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        boxShadow: [BoxShadow(color: AppColors.lig_gray,blurRadius: 2)],
                        border: Border.all(
                            color: AppColors.black),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: Get.width > 550
                                    ? 8
                                    : 5),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color:
                              AppColors.light_black,
                              size: Get.height / 50,
                            ),
                          ),
                        ),
                      ),
                    ),),
                  ),
                ],
              )),
        ));
  }


}
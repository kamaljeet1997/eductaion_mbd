import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
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
                            // disableVerticalScroll: false,
                            // disableHorizontalScroll: true,
                          ),
                          onWebViewCreated: (controller) async {
                            print('onWebViewCreated');
                            // _controller = controller;
                          },
                          onReceivedError: (controller, request, error) {
                            print('onReceivedError -> $error');
                          },
                          onReceivedHttpError: (controller, request, errorResponse) {
                            print('onReceivedHttpError -> $errorResponse');
                          },
                          onProgressChanged: (controller, progress) {
                            print('onProgressChanged -> $progress');
                          },
                          onLoadStop: (controller, url) async {
                            print('onLoadStop');
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
import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_colors.dart';

class AppFunctions {
  /*Future<String> checkConnectivity() async {
    final Connectivity _connectivity = Connectivity();
    String connectionStatus;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      connectionStatus = (await _connectivity.checkConnectivity()).toString();
    } on PlatformException catch (e) {
      connectionStatus = 'No connection';
    }
    return connectionStatus;
  }*/

  /*Future<String> checkConnection() async {
    var _connStatus = await checkConnectivity();
    //print('connection type: $_connStatus');
    if (_connStatus.toString().toLowerCase().contains('.wifi') ||
        _connStatus.toString().toLowerCase().contains('.mobile')) {
      isDeviceConnected.value = true;
    } else {
      isDeviceConnected.value = false;
    }

    return _connStatus
        .toString()
        .toUpperCase()
        .substring(_connStatus.lastIndexOf('.') + 1);
  }*/

  void navigateTo(BuildContext context, Widget page) =>
      Navigator.push(context, MaterialPageRoute(builder: (_) => page));

  Widget CustomText({required String txt, required TextStyle style}) {
    return Text(
      txt,
      style: style,
    );
  }

  Widget InkwellButtons({required Image image}) {
    return Expanded(
      child: Container(width: 170, height: 60, child: image),
    );
  }

  Widget SignUpContainer({required String st}) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: AppColor.kBlueColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: CustomText(
            txt: st,
            style: const TextStyle(
              color: AppColor.kwhiteColor,
              fontWeight: FontWeight.normal,
              fontSize: 14,
            )),
      ),
    );
  }

  TextSpan RichTextSpan({required String one, required String two}) {
    return TextSpan(children: [
      TextSpan(
          text: one,
          style: TextStyle(fontSize: 13, color: AppColor.kBlackColor)),
      TextSpan(
          text: two,
          style: TextStyle(
            fontSize: 13,
            color: AppColor.kBlueColor,
          )),
    ]);
  }
}

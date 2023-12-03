import 'package:flutter/material.dart';

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
}

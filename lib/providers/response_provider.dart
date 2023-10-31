// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:voiceklip_app/components/common/snacbar_common.dart';
// import 'package:googlemap_testapp/common/snackbar_common.dart';

class ResponseProvider with ChangeNotifier {
  // State
  bool _loading = false;
  String _message = "";

  // Getter
  bool get loading => _loading;
  String get message => _message;

  // Setter or Method
  void isBusy(bool value) {
    _loading = value;
    notifyListeners();
  }

  void snackBarOnError(String message, BuildContext context) {
    _message = message;
    SnackbarCommon.show(context, _message);
    notifyListeners();
  }

  void snackBarOnSuccess(String message, BuildContext context) {
    _message = message;
    SnackbarCommon.show(context, _message, backgroundColor: Colors.green);
    notifyListeners();
  }
}

import 'package:flutter/services.dart';

class BAFQR {
  static const MethodChannel _apiChannel = MethodChannel("ugsv_flutter");
  static void openLogin() {
    _apiChannel.invokeMethod("open_login");
  }
}
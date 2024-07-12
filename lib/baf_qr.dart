import 'package:flutter/services.dart';

class BAFQR {
  static const MethodChannel _apiChannel = MethodChannel("baf_qr");
  static void openLogin() {
    _apiChannel.invokeMethod("open_login");
  }
}

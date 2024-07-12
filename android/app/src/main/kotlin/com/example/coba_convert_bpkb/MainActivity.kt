package com.example.coba_convert_bpkb

import android.content.Intent
import android.content.res.Configuration
import id.baf.mobile.LoginActivity
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity(){
    private  val CHANNEL="baf_qr"
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "open_login") {
                openLogin(call,result);
            } else {
                result.notImplemented()
            }
        }
    }

    private fun openLogin(call: MethodCall, result: MethodChannel.Result) {
        startActivity(Intent(this,LoginActivity::class.java))
    }
}

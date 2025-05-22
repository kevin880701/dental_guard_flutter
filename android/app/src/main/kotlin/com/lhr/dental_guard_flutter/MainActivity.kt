package com.lhr.dental_guard_flutter

import android.os.Bundle
import android.os.Build
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val AndroidVersionChannel = "android_version"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // 確保 flutterEngine 不為空
        flutterEngine?.let {
            MethodChannel(it.dartExecutor.binaryMessenger, AndroidVersionChannel)
                .setMethodCallHandler { call, result ->
                    if (call.method == "getAndroidVersion") {
                        val androidVersion = getAndroidVersion()
                        result.success(androidVersion)
                    } else {
                        result.notImplemented()
                    }
                }
        }

    }

    private fun getAndroidVersion(): Int {
        return Build.VERSION.SDK_INT
    }
}

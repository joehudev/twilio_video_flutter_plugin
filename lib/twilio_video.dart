
import 'dart:async';

import 'package:flutter/services.dart';

class TwilioVideo {
  static const MethodChannel _channel =
      const MethodChannel('twilio_video');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

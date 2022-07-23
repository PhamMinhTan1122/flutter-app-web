import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app_web/pages/landing_page.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: (context) => LandingPage()));
}

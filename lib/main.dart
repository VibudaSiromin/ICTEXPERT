import 'package:flutter/material.dart';
import 'Screens/home_page.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder,
      home: HomePage(),
    );
  }
}

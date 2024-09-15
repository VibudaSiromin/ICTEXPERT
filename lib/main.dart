
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Screens/home_page.dart';
import 'package:device_preview/device_preview.dart';

Future<void> main()  async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(DevicePreview(
    builder: (context) => MyApp() // Wrap your app
  ),);
}

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

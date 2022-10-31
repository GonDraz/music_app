import 'package:flutter/material.dart';
import 'package:music_app/store/home_screen_store.dart';
import 'package:music_app/ui/pages/home/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp()
      // DevicePreview(
      //   enabled: !kReleaseMode,
      //   builder: (context) =>  MyApp(), // Wrap your app
      // ),
      );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Music App',
        // locale: DevicePreview.locale(context),
        // builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}

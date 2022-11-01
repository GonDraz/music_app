import 'package:flutter/material.dart';
import 'package:music_app/ui/theme/theme.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: KColors.background,
      body: const Center(
          child: CircularProgressIndicator(
        color: KColors.textWhite,
      )),
    );
  }
}

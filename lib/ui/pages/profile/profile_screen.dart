import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/theme.dart';
import '../../widgets/menu.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: KColors.background,
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: KColors.background,
        leading: Container(
          padding: const EdgeInsets.all(10),
          child: SvgPicture.asset(
            KAssets.logo,
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            top: false,
            child: Column(children: [
              Container(
                padding: EdgeInsets.only(top: 88),
                color: KColors.boxBackground,
                height: 50,
                width: 350,
              ),
              Container(
                  height: 300,
                  width: double.infinity,
                  child: const Text("gashaslda")),
              Container(
                  color: Color.fromARGB(255, 255, 0, 221),
                  height: 300,
                  width: double.infinity,
                  child: const Text("gashaslda")),
              Container(
                  color: const Color.fromARGB(255, 0, 255, 76),
                  height: 300,
                  width: double.infinity,
                  child: const Text("gashaslda")),
              Container(
                  color: Color.fromARGB(255, 255, 0, 221),
                  height: 300,
                  width: double.infinity,
                  child: const Text("gashaslda")),
              Container(
                  color: const Color.fromARGB(255, 0, 255, 76),
                  height: 300,
                  width: double.infinity,
                  child: const Text("gashaslda")),
            ]),
          )),
      endDrawer: const Menu(),
    );
  }
}

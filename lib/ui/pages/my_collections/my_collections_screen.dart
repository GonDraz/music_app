import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/theme.dart';
import '../widgets/menu.dart';

class MyCollections extends StatelessWidget {
  const MyCollections({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: KColors.background,
      appBar: AppBar(
        title: const Text("My collection"),
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
          child: SafeArea(
        top: false,
        child: Column(children: [
          Container(
            color: Color.fromARGB(255, 151, 1, 211),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("ahgskj"),
                Text("ahgskj"),
              ],
            ),
          ),
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

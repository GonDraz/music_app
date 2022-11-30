// ignore_for_file: must_be_immutable

import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/ui/widgets/loading_screen.dart';
import 'package:music_app/ui/theme/theme.dart';

import '../../../models/home_model.dart';
import '../../../store/home_screen_store.dart';
import '../../widgets/BottomBar.dart';
import '../../widgets/menu.dart';
import 'new_releases.dart';
import 'top_charts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _homeScreenStore = HomeScreenStore();
  bool isFirstLoad = true;

  @override
  void initState() {
    super.initState();
    print("object");

    _homeScreenStore.getApi().whenComplete(() {
      setState(() => isFirstLoad = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return isFirstLoad
        ? const LoadingScreen()
        : Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: KColors.background,
            appBar: AppBar(
              title: const Text("Home"),
              backgroundColor: KColors.background,
              leading: Container(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(
                  KAssets.logo,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            body: Stack(
              children: [
                SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: SafeArea(
                      top: false,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // topCharts(),
                            const TopPlayList(),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Text(
                                "Top Charts",
                                style: TextStyle(
                                  color: KColors.textWhite,
                                  fontSize: 20,
                                  fontFamily: KFonts.quicksand,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 200,
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: topCharts()),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Text(
                                "New Releases",
                                style: TextStyle(
                                  color: KColors.textWhite,
                                  fontSize: 20,
                                  fontFamily: KFonts.quicksand,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 200,
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: newReleases()),
                            ),
                            SizedBox(
                              height: 80,
                            )
                          ]),
                    )),
                Container(
                    alignment: Alignment.bottomCenter,
                    child: const BottomBar()),
              ],
            ),
            endDrawer: const Menu(),
          );
  }

  List<Widget> topCharts() {
    return _homeScreenStore.dataHomeScreen!.topCharts!.map((e) {
      return TopChartsList(
        dataTopCharts: e,
      );
    }).toList();
  }

  List<Widget> newReleases() {
    return _homeScreenStore.dataHomeScreen!.newReleases!.map((e) {
      return NewReleasesList(
        dataNewReleases: e,
      );
    }).toList();
  }
}

class TopPlayList extends StatelessWidget {
  const TopPlayList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        height: 500,
        child: Stack(
          children: [
            SvgPicture.asset(KAssets.image1),
            Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Currated playlist",
                    style: TextStyle(color: KColors.textWhite, fontSize: 20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "R & B Hits",
                        style: TextStyle(
                            color: KColors.textWhite,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        """All mine, Lie again, Petty call me everyday,
Out of time, No love, Bad habit,
and so much more""",
                        style: TextStyle(
                            color: KColors.textWhite,
                            fontWeight: FontWeight.w400),
                      ),
                      // SvgPicture.asset(KAssets.imageAvatar),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/ui/pages/widgets/loading_screen.dart';
import 'package:music_app/ui/theme/theme.dart';

import '../../../store/home_screen_store.dart';
import '../widgets/BottomBar.dart';
import '../widgets/menu.dart';

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
        ? LoadingScreen()
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
                    physics: BouncingScrollPhysics(),
                    child: SafeArea(
                      top: false,
                      child: Column(children: [
                        // topCharts(),
                        const TopPlayList(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                            Container(
                              height: 200,
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: topCharts()),
                            ),
                          ],
                        ),
                        const NewReleases(),
                        Container(
                            color: Colors.red.withOpacity(0.5),
                            height: 300,
                            width: double.infinity,
                            child: const Text("gashaslda")),
                        Container(
                            color: const Color.fromARGB(255, 0, 255, 76),
                            height: 300,
                            width: double.infinity,
                            child: const Text("gashaslda")),
                        const Text("gashaslda"),
                        Image.network("http://placeimg.com/640/480/nightlife"),
                        const Text("gashaslda"),
                        const Text("gashaslda"),
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
      return TopCharts();
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

class TopCharts extends StatelessWidget {
  const TopCharts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: KColors.background, borderRadius: BorderRadius.circular(10)),
        height: 30,
        width: 250,
        child: const Text(
          "data",
          style: TextStyle(color: KColors.textWhite),
        ),
      ),
    );
  }
}

class NewReleases extends StatelessWidget {
  const NewReleases({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            "New releases.",
            style: TextStyle(
              color: KColors.textWhite,
              fontSize: 20,
              fontFamily: KFonts.quicksand,
            ),
          ),
        ),
        Container(
          color: Colors.amber,
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: KColors.background,
                      borderRadius: BorderRadius.circular(10)),
                  height: 30,
                  width: 250,
                  child: const Text(
                    "data",
                    style: TextStyle(color: KColors.textWhite),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: KColors.background,
                      borderRadius: BorderRadius.circular(10)),
                  height: 30,
                  width: 250,
                  child: const Text(
                    "data",
                    style: TextStyle(color: KColors.textWhite),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

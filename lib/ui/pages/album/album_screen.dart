import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/theme.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({super.key});

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: KColors.background,
        // appBar: AppBar(
        //   title: const Text("Home"),
        //   backgroundColor: KColors.background,
        //   leading: Container(
        //     padding: const EdgeInsets.all(10),
        //     child: GestureDetector(
        //       onTap: () {
        //         Navigator.pop(context);
        //       },
        //       child: SvgPicture.asset(
        //         KAssets.logo,
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //   ),
        // ),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              expandedHeight: 300,
              stretch: true,
              leading: Container(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    KAssets.logo,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              backgroundColor: KColors.textWhite,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: const EdgeInsets.all(0),
                title: Align(
                  alignment: Alignment.bottomCenter,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      height: 180,
                      padding: const EdgeInsets.all(12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        // child: Hero(
                        //   tag: "album screen",
                        child: Image.network(
                          "http://placeimg.com/640/480/city",
                          // width: double.maxFinite,
                          fit: BoxFit.cover,
                        ),
                        // ),
                      ),
                    ),
                  ),
                ),
                background: Container(
                  child: Image.network(
                    "http://placeimg.com/640/480/city",
                    fit: BoxFit.fitHeight,
                  ),
                ),
                stretchModes: <StretchMode>[
                  // StretchMode.blurBackground,
                  StretchMode.zoomBackground,
                  StretchMode.fadeTitle
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 100,
                    color: Colors.blueGrey,
                    child: const Text("data"),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    child: const Text("data"),
                    height: 100,
                    color: Colors.blueGrey,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    child: const Text("data"),
                    height: 100,
                    color: Colors.blueGrey,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    child: const Text("data"),
                    height: 100,
                    color: Colors.blueGrey,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    child: const Text("data"),
                    height: 100,
                    color: Colors.blueGrey,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    child: const Text("data"),
                    height: 100,
                    color: Colors.blueGrey,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    child: const Text("data"),
                    height: 100,
                    color: Colors.blueGrey,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    child: const Text("data"),
                    height: 100,
                    color: Colors.blueGrey,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

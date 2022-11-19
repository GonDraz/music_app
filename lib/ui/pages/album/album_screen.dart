import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../models/home_model.dart';
import '../../theme/theme.dart';

class AlbumScreen extends StatelessWidget {
  AlbumScreen({super.key, this.dataNewReleases});
  NewReleases? dataNewReleases;

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
                  // ignore: sort_child_properties_last
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      height: 180,
                      padding: const EdgeInsets.all(12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Hero(
                          tag: "${dataNewReleases!.name}",
                          child: Image.network(
                            dataNewReleases!.thumbnail.toString(),
                            width: double.maxFinite,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                background: Container(
                  child: Image.network(
                    dataNewReleases!.thumbnail.toString(),
                    fit: BoxFit.cover,
                  ),
                ),
                stretchModes: const <StretchMode>[
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

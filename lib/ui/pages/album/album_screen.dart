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
                background: Image.network(
                  dataNewReleases!.thumbnail.toString(),
                  fit: BoxFit.cover,
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
                  Container(
                    padding: EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dataNewReleases!.name.toString(),
                          style: TextStyle(
                              color: KColors.nameMusic,
                              fontSize: 35,
                              fontFamily: KFonts.quicksand,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "data de.....",
                          style: TextStyle(
                              color: KColors.textWhite,
                              fontSize: 16,
                              fontFamily: KFonts.quicksand),
                        ),
                        Text(
                          "data play list",
                          style: TextStyle(
                              color: KColors.textWhite,
                              fontSize: 16,
                              fontFamily: KFonts.quicksand),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: KColors.boxBackground,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 2, right: 12),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    print("play all");
                                  },
                                  child: Icon(Icons.play_circle,
                                      color: KColors.accept),
                                ),
                              ),
                              Text(
                                "Play all",
                                style: TextStyle(color: KColors.textWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: KColors.boxBackground,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 2, right: 12),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    print("Add to collection");
                                  },
                                  child: Icon(Icons.my_library_add,
                                      color: KColors.accept),
                                ),
                              ),
                              Text(
                                "Add to collection",
                                style: TextStyle(color: KColors.textWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: KColors.boxBackground,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 2, right: 12),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    print("Like");
                                  },
                                  child: Icon(Icons.favorite,
                                      color: KColors.accept),
                                ),
                              ),
                              Text(
                                "Like",
                                style: TextStyle(color: KColors.textWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: KColors.boxBackground,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: KColors.boxBackground,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: KColors.boxBackground,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: KColors.boxBackground,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: KColors.boxBackground,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: KColors.boxBackground,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: KColors.boxBackground,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: KColors.boxBackground,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

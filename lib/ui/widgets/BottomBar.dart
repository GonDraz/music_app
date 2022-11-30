import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:music_app/data/apis/apis.dart';
import 'package:provider/provider.dart';

import '../../data/repository/repository.dart';
import '../../store/home_screen_store.dart';
import '../theme/theme.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.4),
                      child: Image.network(
                          "https://i1.sndcdn.com/artworks-ET9IZWJ6QWJOlEw6-axw9WQ-t500x500.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "data name music",
                            style: TextStyle(
                                color: KColors.textWhite,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "time play",
                            style: TextStyle(
                                color: KColors.textWhite,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        print("gasjd");
                      },
                      icon: const Icon(Icons.skip_previous)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_circle_sharp,
                        color: KColors.accept,
                      )),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.skip_next)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:music_app/ui/pages/home/home_screen.dart';
import 'package:music_app/ui/pages/my_collections/my_collections_screen.dart';
import 'package:music_app/ui/pages/profile/profile_screen.dart';
import 'package:music_app/ui/theme/theme.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: KColors.boxBackground,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ListTile(
          leading: const Icon(
            Icons.home_filled,
            color: KColors.accept,
          ),
          title: Text(
            "home",
            style: TextStyle(
              color: KColors.textWhite,
              fontFamily: KFonts.quicksand,
              fontWeight: FontWeight.w900,
            ),
          ),
          onTap: (() {
            print("home");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          }),
        ),
        ListTile(
          leading: const Icon(
            Icons.my_library_music_rounded,
            color: KColors.textNull,
          ),
          title: Text(
            "My collections",
            style: TextStyle(
              color: KColors.textNull,
              fontFamily: KFonts.quicksand,
              fontWeight: FontWeight.w900,
            ),
          ),
          onTap: (() {
            print("My collections");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyCollections(),
              ),
            );
          }),
        ),
        ListTile(
          leading: const Icon(
            Icons.radio,
            color: KColors.textNull,
          ),
          title: Text(
            "Radio",
            style: TextStyle(
              color: KColors.textNull,
              fontFamily: KFonts.quicksand,
              fontWeight: FontWeight.w900,
            ),
          ),
          onTap: (() {
            print("Radio");
          }),
        ),
        ListTile(
          leading: const Icon(
            Icons.video_library,
            color: KColors.textNull,
          ),
          title: Text(
            "Music videos",
            style: TextStyle(
              color: KColors.textNull,
              fontFamily: KFonts.quicksand,
              fontWeight: FontWeight.w900,
            ),
          ),
          onTap: (() {
            print("Music videos");
          }),
        ),
        ListTile(
          leading: const Icon(
            Icons.person,
            color: KColors.textNull,
          ),
          title: Text(
            "Profile",
            style: TextStyle(
              color: KColors.textNull,
              fontFamily: KFonts.quicksand,
              fontWeight: FontWeight.w900,
            ),
          ),
          onTap: (() {
            print("Profile");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ),
            );
          }),
        ),
        ListTile(
          leading: const Icon(
            color: KColors.textNull,
            Icons.logout,
          ),
          title: Text(
            "Log out",
            style: TextStyle(
              color: KColors.textNull,
              fontFamily: KFonts.quicksand,
              fontWeight: FontWeight.w900,
            ),
          ),
          onTap: (() {
            print("Log out");
          }),
        ),
      ]),
    );
  }
}

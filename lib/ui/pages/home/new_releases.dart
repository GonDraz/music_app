// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:music_app/ui/pages/album/album_screen.dart';

import '../../../models/home_model.dart';
import '../../theme/theme.dart';

class NewReleasesList extends StatelessWidget {
  NewReleasesList({
    Key? key,
    this.dataNewReleases,
  }) : super(key: key);
  NewReleases? dataNewReleases;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: KColors.boxBackground,
            borderRadius: BorderRadius.circular(10)),
        height: 30,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AlbumScreen()));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      dataNewReleases!.thumbnail.toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                dataNewReleases!.mane.toString(),
                style: const TextStyle(color: KColors.textWhite, fontSize: 14),
              ),
              Text(
                dataNewReleases!.composer.toString(),
                style: const TextStyle(color: KColors.textNull, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

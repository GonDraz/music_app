// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../models/home_model.dart';
import '../../theme/theme.dart';

class TopChartsList extends StatefulWidget {
  TopChartsList({
    Key? key,
    this.dataTopCharts,
  }) : super(key: key);

  TopCharts? dataTopCharts;

  @override
  State<TopChartsList> createState() => _TopChartsListState();
}

class _TopChartsListState extends State<TopChartsList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: KColors.boxBackground,
            borderRadius: BorderRadius.circular(10)),
        height: 30,
        width: 230,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        widget.dataTopCharts!.thumbnail.toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    widget.dataTopCharts!.name.toString(),
                    style: TextStyle(color: KColors.textWhite, fontSize: 14),
                  ),
                  Text(
                    widget.dataTopCharts!.composer.toString(),
                    style: TextStyle(color: KColors.textNull, fontSize: 12),
                  ),
                  const Spacer(),
                  Text(
                    widget.dataTopCharts!.time.toString(),
                    style: TextStyle(color: KColors.textWhite, fontSize: 14),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: KColors.textNull, width: 1),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                    onPressed: () {
                      print("favorite click button");
                      print("");
                    },
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: KColors.accept,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

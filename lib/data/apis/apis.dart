import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:music_app/models/home_model.dart';

class ClassApi {
  Dio dio = Dio();
  //đang bị bug ở dấy chưa biết giải như thế nào=((
  Future getHomeModel() async {
    // try {
    final response =
        await rootBundle.loadString('assets/fakedata/fake_data.json');
    final res = json.decode(response);

    final commonResponse =
        HomeModel.fromJson(res['message'] as Map<String, dynamic>);
    // } catch (e) {
    //   print(e);
    // }
  }
}

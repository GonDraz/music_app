import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:music_app/models/common_response/common_response.dart';
import 'package:music_app/models/home_model.dart';

class ClassApi {
  Dio dio = Dio();

  Future<HomeModel?> getHomeData() async {
    try {
      return await rootBundle
          .loadString('assets/fakedata/fake_data.json')
          .then((value) {
        var res = json.decode(value);
        final commonResponse = CommonResponse.fromJson(
            json: res['message'] as Map<String, dynamic>);
        if (commonResponse.statusCode == 200) {
          print(res);
          return HomeModel.fromJson(res);
        } else {
          return Future.error(res);
        }
      });
    } on Exception catch (e) {
      return Future.error(e);
    }
  }
}

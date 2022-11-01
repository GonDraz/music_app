import 'dart:io';

import 'package:mobx/mobx.dart';
import 'package:music_app/data/apis/apis.dart';

import '../data/repository/repository.dart';
import '../models/home_model.dart';
part 'home_screen_store.g.dart';

class HomeScreenStore = _HomeScreenStore with _$HomeScreenStore;

abstract class _HomeScreenStore with Store {
  final _classRepository = ClassRepository();

  // _HomeScreenStore({required ClassRepository classRepository})
  //     : _classRepository = classRepository;

  final api = ClassApi();

  @observable
  Data? dataHomeScreen;

  @action
  Future getApi() async {
    await _classRepository.fetchHomeData().then((value) {
      dataHomeScreen = value!.data;
    }).whenComplete(() {
      print(dataHomeScreen);
    });
  }
}

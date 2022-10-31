import 'package:mobx/mobx.dart';
import 'package:music_app/data/apis/apis.dart';

import '../data/repository/repository.dart';
part 'home_screen_store.g.dart';

class HomeScreenStore = _HomeScreenStore with _$HomeScreenStore;

abstract class _HomeScreenStore with Store {
  final ClassRepository _classRepository;

  _HomeScreenStore({required ClassRepository classRepository})
      : _classRepository = classRepository;

  final api = ClassApi();

  @action
  Future getApi() async {
    return _classRepository.fetchHomeData();
  }
}

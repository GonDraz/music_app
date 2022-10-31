import 'package:mobx/mobx.dart';
import 'package:music_app/data/apis/apis.dart';
part 'home_screen_store.g.dart';

class HomeScreenStore = _HomeScreenStoreBase with _$HomeScreenStore;

abstract class _HomeScreenStoreBase with Store {
  final api = ClassApi();

  @action
  Future getApi() async {
    api.getHomeModel();
  }
}

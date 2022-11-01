import 'package:music_app/data/apis/apis.dart';

import '../../models/home_model.dart';

class ClassRepository {
  final ClassApi _classRepository = ClassApi();

  // ClassRepository({required ClassApi classRepositoryAPI})
  //     : _classRepository = classRepositoryAPI;

  Future<HomeModel?> fetchHomeData() async {
    return await _classRepository.getHomeData();
  }
}

import 'package:music_app/data/apis/apis.dart';

class ClassRepository {
  final ClassApi _classRepository;

  ClassRepository({required ClassApi classRepositoryAPI})
      : _classRepository = classRepositoryAPI;

  Future fetchHomeData() async {
    return await _classRepository.getHomeData();
  }
}

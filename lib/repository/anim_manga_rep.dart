import 'package:api_version_7/manager/api_service.dart';
import 'package:api_version_7/model/anime_response.dart';

import '../model/manga_response.dart';

class AnimeRepository {
  final _api = ApiService(buildDioClient("https://kitsu.io/api/edge"));

  Future<List<Data>> getAnime() async {
    try {
      final response = await _api.getAnimes();
      return response.data ?? [];
    } catch (e) {
      print(
          "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO $e");
      return [];
    }
  }

  Future<List<MangaData>> getMangas()async{
    try{
      final response   = await _api.getMangas();
      return response.data ?? [];
    }catch(e){
      print(
          "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO $e");
      return [];
    }
  }
}

//
// https://kitsu.io/api/edge/anime

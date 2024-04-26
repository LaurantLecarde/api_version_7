import 'package:api_version_7/repository/anim_manga_rep.dart';
import 'package:flutter/cupertino.dart';

import '../model/anime_response.dart';
import '../model/manga_response.dart';

class AnimView extends ChangeNotifier {
  final _repo = AnimeRepository();
  bool loading = false;
  final List<Data> animList   = [];
  final List<MangaData> mangaList   = [];

  getAnimes() async {
    loading  =  true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));
    loading = false;
    notifyListeners();
    animList.addAll(await _repo.getAnime());
    notifyListeners();
  }

  getMangas() async{
    loading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));
    loading = false;
    notifyListeners();
    mangaList.addAll(await _repo.getMangas());
    notifyListeners();
  }
}
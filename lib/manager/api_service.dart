import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../model/anime_response.dart';
import '../model/manga_response.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService{
  factory ApiService(Dio dio,{String baseUrl}) = _ApiService;

  @GET("/anime")
  Future<AnimeResponse> getAnimes();

  @GET("/manga")
  Future<MangaResponse> getMangas();

}

Dio buildDioClient(String base){
  final dio = Dio()..options = BaseOptions(baseUrl: base);
  dio.interceptors.add(
    PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
      compact: true,
      maxWidth: 90
    )
  );
  return dio;
}

// https://kitsu.io/api/edge/anime

// https://kitsu.io/api/edge/manga

import 'package:album_app/config/environment_configuration.dart';
import 'package:album_app/models/album.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class AlbumService {

  static Future<List<AlbumModel>> getData() async {
    Dio dioRequest = Dio();
    List<AlbumModel> albumModels = [];

    var response = await dioRequest.get(EnvironmentConfiguration.baseAPIUrl);
    Map<String, dynamic> data = json.decode(response.data);
    List<dynamic> resultData = data['results'] as List<dynamic>;

    for (var element in resultData) {
      Map<String, dynamic> albumData = element as Map<String, dynamic>;
      AlbumModel albumModel = AlbumModel.fromJson(albumData);
      albumModels.add(albumModel);
    }
    
    return albumModels;
  }
}
import 'package:album_app/models/album.dart';
import 'package:album_app/services/album_service.dart';
import 'package:flutter/material.dart';

class AlbumProvider extends ChangeNotifier {

  bool isLoading = false;
  List<AlbumModel> albums = [];
  List<bool> favorite = [];
  int count = 0;

  Future<void> getData() async {
    albums = await AlbumService.getData();
    favorite = albums.map((_) => false).toList();
    isLoading = true;

    notifyListeners();
  }

  void addCount() {
    count++;
    notifyListeners();
  }

  void decCount() {
    count--;
    notifyListeners();
  }
}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'album.freezed.dart';
part 'album.g.dart';

@freezed
class AlbumModel with _$AlbumModel {
  const factory AlbumModel({
    @Default('') String artistName,
    @Default('') String artworkUrl100,
    @Default(0) double collectionPrice,
    @Default('') String releaseDate,
  }) = _AlbumModel;

  factory AlbumModel.fromJson(Map<String, dynamic> json) => _$AlbumModelFromJson(json);
}
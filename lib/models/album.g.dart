// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlbumModel _$$_AlbumModelFromJson(Map<String, dynamic> json) =>
    _$_AlbumModel(
      artistName: json['artistName'] as String? ?? '',
      artworkUrl100: json['artworkUrl100'] as String? ?? '',
      collectionPrice: (json['collectionPrice'] as num?)?.toDouble() ?? 0,
      releaseDate: json['releaseDate'] as String? ?? '',
    );

Map<String, dynamic> _$$_AlbumModelToJson(_$_AlbumModel instance) =>
    <String, dynamic>{
      'artistName': instance.artistName,
      'artworkUrl100': instance.artworkUrl100,
      'collectionPrice': instance.collectionPrice,
      'releaseDate': instance.releaseDate,
    };

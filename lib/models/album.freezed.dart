// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'album.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlbumModel _$AlbumModelFromJson(Map<String, dynamic> json) {
  return _AlbumModel.fromJson(json);
}

/// @nodoc
class _$AlbumModelTearOff {
  const _$AlbumModelTearOff();

  _AlbumModel call(
      {String artistName = '',
      String artworkUrl100 = '',
      double collectionPrice = 0,
      String releaseDate = ''}) {
    return _AlbumModel(
      artistName: artistName,
      artworkUrl100: artworkUrl100,
      collectionPrice: collectionPrice,
      releaseDate: releaseDate,
    );
  }

  AlbumModel fromJson(Map<String, Object> json) {
    return AlbumModel.fromJson(json);
  }
}

/// @nodoc
const $AlbumModel = _$AlbumModelTearOff();

/// @nodoc
mixin _$AlbumModel {
  String get artistName => throw _privateConstructorUsedError;
  String get artworkUrl100 => throw _privateConstructorUsedError;
  double get collectionPrice => throw _privateConstructorUsedError;
  String get releaseDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumModelCopyWith<AlbumModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumModelCopyWith<$Res> {
  factory $AlbumModelCopyWith(
          AlbumModel value, $Res Function(AlbumModel) then) =
      _$AlbumModelCopyWithImpl<$Res>;
  $Res call(
      {String artistName,
      String artworkUrl100,
      double collectionPrice,
      String releaseDate});
}

/// @nodoc
class _$AlbumModelCopyWithImpl<$Res> implements $AlbumModelCopyWith<$Res> {
  _$AlbumModelCopyWithImpl(this._value, this._then);

  final AlbumModel _value;
  // ignore: unused_field
  final $Res Function(AlbumModel) _then;

  @override
  $Res call({
    Object? artistName = freezed,
    Object? artworkUrl100 = freezed,
    Object? collectionPrice = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      artworkUrl100: artworkUrl100 == freezed
          ? _value.artworkUrl100
          : artworkUrl100 // ignore: cast_nullable_to_non_nullable
              as String,
      collectionPrice: collectionPrice == freezed
          ? _value.collectionPrice
          : collectionPrice // ignore: cast_nullable_to_non_nullable
              as double,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AlbumModelCopyWith<$Res> implements $AlbumModelCopyWith<$Res> {
  factory _$AlbumModelCopyWith(
          _AlbumModel value, $Res Function(_AlbumModel) then) =
      __$AlbumModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String artistName,
      String artworkUrl100,
      double collectionPrice,
      String releaseDate});
}

/// @nodoc
class __$AlbumModelCopyWithImpl<$Res> extends _$AlbumModelCopyWithImpl<$Res>
    implements _$AlbumModelCopyWith<$Res> {
  __$AlbumModelCopyWithImpl(
      _AlbumModel _value, $Res Function(_AlbumModel) _then)
      : super(_value, (v) => _then(v as _AlbumModel));

  @override
  _AlbumModel get _value => super._value as _AlbumModel;

  @override
  $Res call({
    Object? artistName = freezed,
    Object? artworkUrl100 = freezed,
    Object? collectionPrice = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_AlbumModel(
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      artworkUrl100: artworkUrl100 == freezed
          ? _value.artworkUrl100
          : artworkUrl100 // ignore: cast_nullable_to_non_nullable
              as String,
      collectionPrice: collectionPrice == freezed
          ? _value.collectionPrice
          : collectionPrice // ignore: cast_nullable_to_non_nullable
              as double,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AlbumModel implements _AlbumModel {
  const _$_AlbumModel(
      {this.artistName = '',
      this.artworkUrl100 = '',
      this.collectionPrice = 0,
      this.releaseDate = ''});

  factory _$_AlbumModel.fromJson(Map<String, dynamic> json) =>
      _$$_AlbumModelFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String artistName;
  @JsonKey(defaultValue: '')
  @override
  final String artworkUrl100;
  @JsonKey(defaultValue: 0)
  @override
  final double collectionPrice;
  @JsonKey(defaultValue: '')
  @override
  final String releaseDate;

  @override
  String toString() {
    return 'AlbumModel(artistName: $artistName, artworkUrl100: $artworkUrl100, collectionPrice: $collectionPrice, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AlbumModel &&
            (identical(other.artistName, artistName) ||
                const DeepCollectionEquality()
                    .equals(other.artistName, artistName)) &&
            (identical(other.artworkUrl100, artworkUrl100) ||
                const DeepCollectionEquality()
                    .equals(other.artworkUrl100, artworkUrl100)) &&
            (identical(other.collectionPrice, collectionPrice) ||
                const DeepCollectionEquality()
                    .equals(other.collectionPrice, collectionPrice)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(artistName) ^
      const DeepCollectionEquality().hash(artworkUrl100) ^
      const DeepCollectionEquality().hash(collectionPrice) ^
      const DeepCollectionEquality().hash(releaseDate);

  @JsonKey(ignore: true)
  @override
  _$AlbumModelCopyWith<_AlbumModel> get copyWith =>
      __$AlbumModelCopyWithImpl<_AlbumModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlbumModelToJson(this);
  }
}

abstract class _AlbumModel implements AlbumModel {
  const factory _AlbumModel(
      {String artistName,
      String artworkUrl100,
      double collectionPrice,
      String releaseDate}) = _$_AlbumModel;

  factory _AlbumModel.fromJson(Map<String, dynamic> json) =
      _$_AlbumModel.fromJson;

  @override
  String get artistName => throw _privateConstructorUsedError;
  @override
  String get artworkUrl100 => throw _privateConstructorUsedError;
  @override
  double get collectionPrice => throw _privateConstructorUsedError;
  @override
  String get releaseDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AlbumModelCopyWith<_AlbumModel> get copyWith =>
      throw _privateConstructorUsedError;
}

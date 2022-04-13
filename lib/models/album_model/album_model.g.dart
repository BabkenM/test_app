// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlbumModel _$$_AlbumModelFromJson(Map json) => _$_AlbumModel(
      id: json['id'] as int,
      userId: json['userId'] as int,
      title: json['title'] as String,
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) =>
                  PhotoModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const <PhotoModel>[],
    );

Map<String, dynamic> _$$_AlbumModelToJson(_$_AlbumModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'photos': instance.photos.map((e) => e.toJson()).toList(),
    };

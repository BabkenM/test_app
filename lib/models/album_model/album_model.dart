import 'package:freezed_annotation/freezed_annotation.dart';

import '../photo_model/photo_model.dart';

part 'album_model.freezed.dart';
part 'album_model.g.dart';

@freezed
class AlbumModel with _$AlbumModel {
  const factory AlbumModel({
    required int id,
    required int userId,
    required String title,
    @Default(<PhotoModel>[]) List<PhotoModel> photos,
  }) = _AlbumModel;

  factory AlbumModel.fromJson(Map<String, dynamic> json) =>
      _$AlbumModelFromJson(json);
}

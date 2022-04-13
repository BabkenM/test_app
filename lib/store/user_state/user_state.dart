import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

import '../../http/repositories/json_placeholder_repository.dart';
import '../../models/album_model/album_model.dart';
import '../../models/photo_model/photo_model.dart';
import '../../models/post_model/post_model.dart';
import '../loading_state/loading_state.dart';

part 'user_state.g.dart';

class UserState = _UserState with _$UserState;

abstract class _UserState with Store {
  final postLoadingState = LoadingState();
  final albumLoadingState = LoadingState();
  final int userId;
  List<int> albumsIds = <int>[];
  int previewCount = 3;

  _UserState({required this.userId});

  @observable
  ObservableList<AlbumModel> albums = ObservableList<AlbumModel>();

  @observable
  ObservableList<PostModel> posts = ObservableList<PostModel>();

  @action
  Future<void> getPosts() async {
    try {
      postLoadingState.startLoading();
      final res = await JsonPlaceholderRepository.getPosts(userId);
      posts = List.generate(res.length, (i) => PostModel.fromJson(res[i]))
          .asObservable();
    } on DioError catch (e) {
      log(e.message);
    } finally {
      postLoadingState.stopLoading();
    }
  }

  Future<void> getAlbums() async {
    try {
      albumLoadingState.startLoading();
      final res = await JsonPlaceholderRepository.getAlbums();
      albums = List.generate(
        res.length,
        (i) => AlbumModel.fromJson(res[i]),
      ).asObservable();
      if (albumsIds.isEmpty) {
        albumsIds.add(
          albums[0].id,
        );
      }
      for (var i = 1; i < previewCount; i++) {
        final album = albums[i];
        albumsIds.add(
          album.id,
        );
      }

      await Future.wait([for (final id in albumsIds) getAlbumPhotos(id)]);
    } on DioError catch (e) {
      log(e.message);
    } finally {
      albumLoadingState.stopLoading();
    }
  }

  @action
  Future<void> getAlbumPhotos(int id) async {
    try {
      final res = await JsonPlaceholderRepository.getAlbumPhotos(id);
      final photos = List.generate(
        res.length,
        (i) => PhotoModel.fromJson(res[i]),
      );
      for (var i = 0; i < previewCount; i++) {
        if (albums[i].id == id) {
          albums[i] = albums[i].copyWith(photos: photos);
        }
      }
    } on DioError catch (e) {
      log(e.message);
    }
  }
}

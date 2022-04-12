import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

import '../../http/repositories/json_placeholder_repository.dart';
import '../../models/album_model/album_model.dart';
import '../../models/post_model/post_model.dart';
import '../loading_state/loading_state.dart';

part 'user_state.g.dart';

class UserState = _UserState with _$UserState;

abstract class _UserState with Store {
  final postLoadingState = LoadingState();
  final albumLoadingState = LoadingState();

  @observable
  ObservableList<PostModel> posts = ObservableList<PostModel>();

  @observable
  ObservableList<AlbumModel> albums = ObservableList<AlbumModel>();

  @action
  Future<void> getPosts() async {
    try {
      postLoadingState.startLoading();
      final res = await JsonPlaceholderRepository.getPosts();
      posts = List.generate(res.length, (i) => PostModel.fromJson(res[i]))
          .asObservable();
    } on DioError catch (e) {
      log(e.message);
    } finally {
      postLoadingState.stopLoading();
    }
  }

  @action
  Future<void> getAlbums() async {
    try {
      albumLoadingState.startLoading();
      final res = await JsonPlaceholderRepository.getAlbums();
      albums = List.generate(res.length, (i) => AlbumModel.fromJson(res[i]))
          .asObservable();
    } on DioError catch (e) {
      log(e.message);
    } finally {
      albumLoadingState.stopLoading();
    }
  }
}

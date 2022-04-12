import 'dart:async';

import '../dio.dart';

class JsonPlaceholderRepository {
  static Future<List> getUsers() async {
    final res = await dio.get(
      '/users',
    );
    return res.data;
  }

  static Future<List> getPosts() async {
    final res = await dio.get(
      '/posts',
    );
    return res.data;
  }

  static Future<List> getAlbums() async {
    final res = await dio.get(
      '/albums',
    );
    return res.data;
  }

  static Future<List> getComments() async {
    final res = await dio.get(
      '/comments',
    );
    return res.data;
  }

  static Future<List> getPhotos() async {
    final res = await dio.get(
      '/photos',
    );
    return res.data;
  }
}

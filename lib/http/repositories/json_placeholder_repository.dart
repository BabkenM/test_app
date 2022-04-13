import 'dart:async';

import '../dio.dart';

class JsonPlaceholderRepository {
  static Future<List> getUsers() async {
    final res = await dio.get(
      '/users',
    );
    return res.data;
  }

  static Future<List> getPosts(int userId) async {
    final res = await dio.get(
      '/posts',
      queryParameters: {
        'userId': userId,
      },
    );
    return res.data;
  }

  static Future<List> getPostDetails(int id) async {
    final res = await dio.get(
      '/posts/$id/comments',
    );
    return res.data;
  }

  static Future<void> addComment({
    required int postId,
    required String email,
    required String name,
    required String body,
  }) async {
    await dio.post(
      '/comments',
      queryParameters: {
        'postId': postId,
      },
      data: {
        'email': email,
        'name': name,
        'body': body,
      },
    );
  }

  static Future<List> getAlbums() async {
    final res = await dio.get(
      '/albums',
    );
    return res.data;
  }

  static Future<List> getAlbumPhotos(int id) async {
    final res = await dio.get(
      '/albums/$id/photos',
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

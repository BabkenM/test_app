// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import 'models/album_model/album_model.dart' as _i12;
import 'models/comment_model/comment_model.dart' as _i11;
import 'models/photo_model/photo_model.dart' as _i13;
import 'models/post_model/post_model.dart' as _i10;
import 'models/user_model/user_model.dart' as _i9;
import 'pages/album_screen/album_screen.dart' as _i6;
import 'pages/albums_screen/albums_screen.dart' as _i5;
import 'pages/home_screen/home_screen.dart' as _i1;
import 'pages/post_screen/post_screen.dart' as _i3;
import 'pages/posts_screen/posts_screen.dart' as _i4;
import 'pages/user_screen/user_screen.dart' as _i2;

class Router extends _i7.RootStackRouter {
  Router([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    UserRoute.name: (routeData) {
      final args = routeData.argsAs<UserRouteArgs>();
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i2.UserScreen(user: args.user, key: args.key));
    },
    PostRoute.name: (routeData) {
      final args = routeData.argsAs<PostRouteArgs>();
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i3.PostScreen(
              post: args.post, comments: args.comments, key: args.key));
    },
    PostsRoute.name: (routeData) {
      final args = routeData.argsAs<PostsRouteArgs>();
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i4.PostsScreen(posts: args.posts, key: args.key));
    },
    AlbumsRoute.name: (routeData) {
      final args = routeData.argsAs<AlbumsRouteArgs>();
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i5.AlbumsScreen(albums: args.albums, key: args.key));
    },
    AlbumRoute.name: (routeData) {
      final args = routeData.argsAs<AlbumRouteArgs>();
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.AlbumScreen(
              album: args.album, photos: args.photos, key: args.key));
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(HomeRoute.name, path: '/'),
        _i7.RouteConfig(UserRoute.name, path: '/user-screen'),
        _i7.RouteConfig(PostRoute.name, path: '/post-screen'),
        _i7.RouteConfig(PostsRoute.name, path: '/posts-screen'),
        _i7.RouteConfig(AlbumsRoute.name, path: '/albums-screen'),
        _i7.RouteConfig(AlbumRoute.name, path: '/album-screen')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.UserScreen]
class UserRoute extends _i7.PageRouteInfo<UserRouteArgs> {
  UserRoute({required _i9.UserModel user, _i8.Key? key})
      : super(UserRoute.name,
            path: '/user-screen', args: UserRouteArgs(user: user, key: key));

  static const String name = 'UserRoute';
}

class UserRouteArgs {
  const UserRouteArgs({required this.user, this.key});

  final _i9.UserModel user;

  final _i8.Key? key;

  @override
  String toString() {
    return 'UserRouteArgs{user: $user, key: $key}';
  }
}

/// generated route for
/// [_i3.PostScreen]
class PostRoute extends _i7.PageRouteInfo<PostRouteArgs> {
  PostRoute(
      {required _i10.PostModel post,
      required List<_i11.CommentModel> comments,
      _i8.Key? key})
      : super(PostRoute.name,
            path: '/post-screen',
            args: PostRouteArgs(post: post, comments: comments, key: key));

  static const String name = 'PostRoute';
}

class PostRouteArgs {
  const PostRouteArgs({required this.post, required this.comments, this.key});

  final _i10.PostModel post;

  final List<_i11.CommentModel> comments;

  final _i8.Key? key;

  @override
  String toString() {
    return 'PostRouteArgs{post: $post, comments: $comments, key: $key}';
  }
}

/// generated route for
/// [_i4.PostsScreen]
class PostsRoute extends _i7.PageRouteInfo<PostsRouteArgs> {
  PostsRoute({required List<_i10.PostModel> posts, _i8.Key? key})
      : super(PostsRoute.name,
            path: '/posts-screen',
            args: PostsRouteArgs(posts: posts, key: key));

  static const String name = 'PostsRoute';
}

class PostsRouteArgs {
  const PostsRouteArgs({required this.posts, this.key});

  final List<_i10.PostModel> posts;

  final _i8.Key? key;

  @override
  String toString() {
    return 'PostsRouteArgs{posts: $posts, key: $key}';
  }
}

/// generated route for
/// [_i5.AlbumsScreen]
class AlbumsRoute extends _i7.PageRouteInfo<AlbumsRouteArgs> {
  AlbumsRoute({required List<_i12.AlbumModel> albums, _i8.Key? key})
      : super(AlbumsRoute.name,
            path: '/albums-screen',
            args: AlbumsRouteArgs(albums: albums, key: key));

  static const String name = 'AlbumsRoute';
}

class AlbumsRouteArgs {
  const AlbumsRouteArgs({required this.albums, this.key});

  final List<_i12.AlbumModel> albums;

  final _i8.Key? key;

  @override
  String toString() {
    return 'AlbumsRouteArgs{albums: $albums, key: $key}';
  }
}

/// generated route for
/// [_i6.AlbumScreen]
class AlbumRoute extends _i7.PageRouteInfo<AlbumRouteArgs> {
  AlbumRoute(
      {required _i12.AlbumModel album,
      required List<_i13.PhotoModel> photos,
      _i8.Key? key})
      : super(AlbumRoute.name,
            path: '/album-screen',
            args: AlbumRouteArgs(album: album, photos: photos, key: key));

  static const String name = 'AlbumRoute';
}

class AlbumRouteArgs {
  const AlbumRouteArgs({required this.album, required this.photos, this.key});

  final _i12.AlbumModel album;

  final List<_i13.PhotoModel> photos;

  final _i8.Key? key;

  @override
  String toString() {
    return 'AlbumRouteArgs{album: $album, photos: $photos, key: $key}';
  }
}

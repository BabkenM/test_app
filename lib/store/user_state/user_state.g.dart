// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserState on _UserState, Store {
  final _$albumsAtom = Atom(name: '_UserState.albums');

  @override
  ObservableList<AlbumModel> get albums {
    _$albumsAtom.reportRead();
    return super.albums;
  }

  @override
  set albums(ObservableList<AlbumModel> value) {
    _$albumsAtom.reportWrite(value, super.albums, () {
      super.albums = value;
    });
  }

  final _$postsAtom = Atom(name: '_UserState.posts');

  @override
  ObservableList<PostModel> get posts {
    _$postsAtom.reportRead();
    return super.posts;
  }

  @override
  set posts(ObservableList<PostModel> value) {
    _$postsAtom.reportWrite(value, super.posts, () {
      super.posts = value;
    });
  }

  final _$getPostsAsyncAction = AsyncAction('_UserState.getPosts');

  @override
  Future<void> getPosts() {
    return _$getPostsAsyncAction.run(() => super.getPosts());
  }

  final _$getAlbumPhotosAsyncAction = AsyncAction('_UserState.getAlbumPhotos');

  @override
  Future<void> getAlbumPhotos(int id) {
    return _$getAlbumPhotosAsyncAction.run(() => super.getAlbumPhotos(id));
  }

  @override
  String toString() {
    return '''
albums: ${albums},
posts: ${posts}
    ''';
  }
}

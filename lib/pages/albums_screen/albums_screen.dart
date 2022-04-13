import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../extensions/extensions.dart';
import '../../http/repositories/json_placeholder_repository.dart';
import '../../models/album_model/album_model.dart';
import '../../models/photo_model/photo_model.dart';
import '../../providers/screen_service.dart';
import '../../router.gr.dart';
import '../../store/loading_state/loading_state.dart';
import '../../widgets/loading_full_screen_widget.dart';

class AlbumsScreen extends StatefulWidget {
  final List<AlbumModel> albums;

  const AlbumsScreen({
    required this.albums,
    Key? key,
  }) : super(key: key);

  @override
  _AlbumsScreenState createState() => _AlbumsScreenState();
}

class _AlbumsScreenState extends State<AlbumsScreen> {
  final loadingState = LoadingState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Albums'),
        centerTitle: true,
      ),
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (_, i) {
                      final album = widget.albums[i];

                      return GestureDetector(
                        onTap: () => getAlbumPhotos(album),
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.all(5),
                          color: context.theme.secondary,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      album.title.titleCase(),
                                      style: context.theme.subtitle1,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    childCount: widget.albums.length,
                  ),
                )
              ],
            ),
            LoadingFullScreenWidget(
              loadingState: loadingState,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> getAlbumPhotos(AlbumModel album) async {
    loadingState.startLoading();
    try {
      final res = await JsonPlaceholderRepository.getAlbumPhotos(album.id);
      final photos =
          List.generate(res.length, (i) => PhotoModel.fromJson(res[i]));
      unawaited(
        router.push(
          AlbumRoute(
            photos: photos,
            album: album,
          ),
        ),
      );
    } on DioError catch (e) {
      log(e.message);
    } finally {
      loadingState.stopLoading();
    }
  }
}

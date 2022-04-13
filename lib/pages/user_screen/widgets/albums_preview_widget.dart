import 'package:flutter/material.dart';

import '../../../extensions/extensions.dart';
import '../../../models/album_model/album_model.dart';
import '../../../providers/screen_service.dart';
import '../../../router.gr.dart';
import '../../../widgets/custom_extended_image_network.dart';

class AlbumsPreviewWidget extends StatelessWidget {
  final List<AlbumModel> albums;

  const AlbumsPreviewWidget({
    required this.albums,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Albums'),
            TextButton(
              onPressed: () {
                router.push(AlbumsRoute(albums: albums));
              },
              child: const Text('See all'),
            ),
          ],
        ).paddingOnly(bottom: 8),
        for (final album in albums.take(3))
          Container(
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
                      ),
                    ),
                  ],
                ),
                CustomExtendedImageNetwork(
                  url: album.photos[0].url,
                ),
              ],
            ),
          )
      ],
    ).paddingHorizontal();
  }
}

import 'package:flutter/material.dart';

import '../../../extensions/extensions.dart';
import '../../../models/album_model/album_model.dart';

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
          children: [
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: const Text('See all'),
            ),
          ],
        ).paddingOnly(bottom: 8),
        for (final album in albums)
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            color: context.theme.secondary,
          )
      ],
    ).paddingHorizontal();
  }
}

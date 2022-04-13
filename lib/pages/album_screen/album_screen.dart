import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../extensions/extensions.dart';
import '../../models/album_model/album_model.dart';
import '../../models/photo_model/photo_model.dart';
import '../../widgets/custom_extended_image_network.dart';

class AlbumScreen extends StatelessWidget {
  final AlbumModel album;
  final List<PhotoModel> photos;

  const AlbumScreen({
    required this.album,
    required this.photos,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(album.title.titleCase()),
        centerTitle: true,
      ),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(height: 300),
          items: [
            for (final photo in photos)
              CustomExtendedImageNetwork(
                url: photo.url,
              )
          ],
        ),
      ),
    );
  }
}

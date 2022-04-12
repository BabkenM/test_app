import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../extensions/context_extension.dart';

class CustomExtendedImageNetwork extends StatelessWidget {
  final String url;
  final BoxFit fit;
  final double? width;
  final double? height;
  final BoxConstraints? constraints;

  const CustomExtendedImageNetwork({
    required this.url,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.constraints,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedImage.network(
      url,
      height: height,
      width: width,
      constraints: constraints,
      enableLoadState: false,
      fit: fit,
      loadStateChanged: (state) {
        switch (state.extendedImageLoadState) {
          case LoadState.completed:
            return state.completedWidget;
          case LoadState.loading:
            return Container(
              width: context.width,
              height: context.height / 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: context.theme.secondary,
              ),
            );
          case LoadState.failed:
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.warning_amber_rounded,
                  color: context.theme.onBackground,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Cannot open the image',
                  style: context.theme.caption.copyWith(
                    color: context.theme.onBackground,
                  ),
                ),
              ],
            );
        }
      },
    );
  }
}

import 'package:flutter/material.dart';

import '../../../extensions/extensions.dart';
import '../../../models/post_model/post_model.dart';

class PostsPreviewWidget extends StatelessWidget {
  final List<PostModel> posts;

  const PostsPreviewWidget({
    required this.posts,
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
        for (final post in posts)
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
                        post.title.titleCase(),
                        style: context.theme.headline5,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        post.body,
                        style: context.theme.headline6,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
      ],
    ).paddingHorizontal();
  }
}

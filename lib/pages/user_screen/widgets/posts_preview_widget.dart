import 'package:flutter/material.dart';

import '../../../extensions/extensions.dart';
import '../../../models/post_model/post_model.dart';
import '../../../providers/screen_service.dart';
import '../../../router.gr.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Posts'),
            TextButton(
              onPressed: () {
                router.push(
                  PostsRoute(
                    posts: posts,
                  ),
                );
              },
              child: const Text('See all'),
            ),
          ],
        ).paddingOnly(bottom: 8),
        for (final post in posts.take(3))
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
                        style: context.theme.subtitle1,
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
                        style: context.theme.bodyText2,
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

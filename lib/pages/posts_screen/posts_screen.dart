import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../extensions/extensions.dart';
import '../../models/post_model/post_model.dart';
import '../../providers/screen_service.dart';
import '../../router.gr.dart';
import '../../store/loading_state/loading_state.dart';
import '../../store/posts_state/posts_state.dart';
import '../../widgets/loading_full_screen_widget.dart';

class PostsScreen extends StatefulWidget {
  final List<PostModel> posts;

  const PostsScreen({
    required this.posts,
    Key? key,
  }) : super(key: key);

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  final loadingState = LoadingState();
  final state = PostsState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
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
                      final post = widget.posts[i];

                      return GestureDetector(
                        onTap: () => getPostDetails(post),
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
                        ),
                      );
                    },
                    childCount: widget.posts.length,
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

  Future<void> getPostDetails(PostModel post) async {
    loadingState.startLoading();
    try {
      final comments = await state.getPostDetails(post.id);
      unawaited(
        router.push(
          PostRoute(
            comments: comments,
            post: post,
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

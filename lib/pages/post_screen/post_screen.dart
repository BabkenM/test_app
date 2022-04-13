import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../extensions/extensions.dart';
import '../../models/comment_model/comment_model.dart';
import '../../models/post_model/post_model.dart';
import '../../sheets/comment_form_sheet.dart';
import '../../store/loading_state/loading_state.dart';
import '../../store/post_state/post_state.dart';
import '../../widgets/loading_full_screen_widget.dart';
import 'widgets/comments_list.dart';

class PostScreen extends StatefulWidget {
  final PostModel post;
  final List<CommentModel> comments;

  const PostScreen({
    required this.post,
    required this.comments,
    Key? key,
  }) : super(key: key);

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final loadingState = LoadingState();
  late final PostState state;

  @override
  void initState() {
    super.initState();
    state = PostState(
      postId: widget.post.id,
      commentsList: widget.comments,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Details'),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.post.title.titleCase(),
                        style: context.theme.subtitle1,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.post.body,
                        style: context.theme.bodyText2,
                      ),
                    ),
                  ],
                ).paddingOnly(bottom: 16),
                Observer(
                  builder: (_) =>
                      CommentList(comments: state.comments.toList()),
                ),
                ElevatedButton(
                  onPressed: openCommentForm,
                  child: const Text('Add a comment'),
                ).paddingVertical(),
              ],
            ).paddingHorizontal(),
            LoadingFullScreenWidget(
              loadingState: loadingState,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> openCommentForm() async {
    final res = await showModalBottomSheet<CommentModel?>(
      context: context,
      isScrollControlled: true,
      builder: (context) => CommentFormSheet(
        postId: widget.post.id,
        newCommentId: state.comments.length,
      ),
    );

    if (res != null) {
      try {
        loadingState.startLoading();
        await state.addComment(comment: res);
      } on DioError catch (e) {
        log(e.message);
      } finally {
        loadingState.stopLoading();
      }
    }
  }
}

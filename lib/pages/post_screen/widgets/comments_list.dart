import 'package:flutter/material.dart';

import '../../../extensions/extensions.dart';
import '../../../models/comment_model/comment_model.dart';

class CommentList extends StatefulWidget {
  final List<CommentModel> comments;

  const CommentList({
    required this.comments,
    Key? key,
  }) : super(key: key);

  @override
  _CommentListState createState() => _CommentListState();
}

class _CommentListState extends State<CommentList> {
  final scrollController = ScrollController();

  @override
  void didUpdateWidget(covariant CommentList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.comments != widget.comments) {
      Future.delayed(const Duration(), scrollToTop);
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        controller: scrollController,
        itemCount: widget.comments.length,
        itemBuilder: (_, i) {
          final comment = widget.comments[i];

          return Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.symmetric(
              vertical: 4,
            ),
            color: context.theme.secondary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        comment.name.titleCase(),
                        style: context.theme.bodyText1,
                      ),
                    ),
                  ],
                ),
                Text(
                  comment.email,
                  style: context.theme.caption,
                ),
                Text(
                  comment.body,
                  style: context.theme.bodyText2,
                ).paddingOnly(top: 16),
              ],
            ),
          );
        },
      ),
    );
  }

  void scrollToTop() {
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }
}

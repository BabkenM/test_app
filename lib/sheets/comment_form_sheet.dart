import 'package:flutter/material.dart';

import '../../extensions/context_extension.dart';
import '../../extensions/widget_extension.dart';
import '../../providers/screen_service.dart';
import '../models/comment_model/comment_model.dart';

class CommentFormSheet extends StatefulWidget {
  final int postId;
  final int newCommentId;

  const CommentFormSheet({
    required this.postId,
    required this.newCommentId,
    Key? key,
  }) : super(key: key);

  @override
  State<CommentFormSheet> createState() => _CommentFormSheetState();
}

class _CommentFormSheetState extends State<CommentFormSheet> {
  final bodyController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    bodyController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Add a comment',
          style: context.theme.headline5,
          textAlign: TextAlign.center,
        ).paddingVertical(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Email'),
            TextField(
              controller: emailController,
            ).paddingOnly(bottom: 16),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Name'),
            TextField(
              controller: nameController,
            ).paddingOnly(bottom: 16),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Body'),
            TextField(
              controller: bodyController,
            ).paddingOnly(bottom: 16),
          ],
        ),
        ElevatedButton(
          onPressed: submitComment,
          child: const Text('Submit'),
        ).expandedHorizontally().paddingOnly(bottom: 8),
      ],
    ).paddingOnly(
      left: 16,
      right: 16,
      bottom: MediaQuery.of(context).viewInsets.bottom,
    );
  }

  void submitComment() {
    if (nameController.text.isEmpty ||
        bodyController.text.isEmpty ||
        emailController.text.isEmpty) {
      router.pop(null);
      return;
    }
    router.pop(
      CommentModel(
        id: widget.newCommentId,
        postId: widget.postId,
        email: emailController.text,
        name: nameController.text,
        body: bodyController.text,
      ),
    );
  }
}

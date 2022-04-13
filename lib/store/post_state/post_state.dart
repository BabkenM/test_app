import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';

import '../../http/repositories/json_placeholder_repository.dart';
import '../../models/comment_model/comment_model.dart';
import '../../utils/storage_utils.dart';

part 'post_state.g.dart';

class PostState = _PostState with _$PostState;

abstract class _PostState with Store {
  final int postId;
  final List<CommentModel> commentsList;
  List<CommentModel> savedComments = <CommentModel>[];

  @observable
  late ObservableList<CommentModel> comments =
      commentsList.reversed.toList().asObservable();

  _PostState({
    required this.postId,
    required this.commentsList,
  }) {
    getSavedComments();
  }

  @action
  Future<void> addComment({required CommentModel comment}) async {
    await JsonPlaceholderRepository.addComment(
      email: comment.email,
      name: comment.name,
      body: comment.body,
      postId: comment.postId,
    );

    savedComments.insert(0, comment);
    await StorageUtils.setCommentsByPostId(
      comment.postId.toString(),
      jsonEncode(savedComments),
    );
    comments.insert(0, comment);
  }

  @action
  Future<void> getSavedComments() async {
    final data = await StorageUtils.getCommentsByPostId(
      postId.toString(),
    );
    final res = await compute(_parseAndDecode, data);
    if (res != null) {
      savedComments =
          List.generate(res.length, (i) => CommentModel.fromJson(res[i]));
      comments.insertAll(0, savedComments);
    }
  }
}

// Must be top-level function
Future<List?> _parseAndDecode(String? response) async {
  if (response != null) {
    return jsonDecode(response);
  }
  return null;
}

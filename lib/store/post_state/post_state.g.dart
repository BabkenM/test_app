// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostState on _PostState, Store {
  final _$commentsAtom = Atom(name: '_PostState.comments');

  @override
  ObservableList<CommentModel> get comments {
    _$commentsAtom.reportRead();
    return super.comments;
  }

  @override
  set comments(ObservableList<CommentModel> value) {
    _$commentsAtom.reportWrite(value, super.comments, () {
      super.comments = value;
    });
  }

  final _$addCommentAsyncAction = AsyncAction('_PostState.addComment');

  @override
  Future<void> addComment({required CommentModel comment}) {
    return _$addCommentAsyncAction
        .run(() => super.addComment(comment: comment));
  }

  final _$getSavedCommentsAsyncAction =
      AsyncAction('_PostState.getSavedComments');

  @override
  Future<void> getSavedComments() {
    return _$getSavedCommentsAsyncAction.run(() => super.getSavedComments());
  }

  @override
  String toString() {
    return '''
comments: ${comments}
    ''';
  }
}

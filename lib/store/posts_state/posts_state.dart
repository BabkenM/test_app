import 'package:mobx/mobx.dart';

import '../../http/repositories/json_placeholder_repository.dart';
import '../../models/comment_model/comment_model.dart';

part 'posts_state.g.dart';

class PostsState = _PostsState with _$PostsState;

abstract class _PostsState with Store {
  Future<List<CommentModel>> getPostDetails(int id) async {
    final res = await JsonPlaceholderRepository.getPostDetails(id);
    return List.generate(res.length, (i) => CommentModel.fromJson(res[i]));
  }
}

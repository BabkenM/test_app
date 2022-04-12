import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../extensions/extensions.dart';
import '../../mixins/after_layout_mixin.dart';
import '../../models/user_model/user_model.dart';
import '../../store/loading_state/loading_state.dart';
import '../../store/user_state/user_state.dart';
import '../../widgets/loading_full_screen_widget.dart';
import 'widgets/albums_preview_widget.dart';
import 'widgets/posts_preview_widget.dart';
import 'widgets/user_info_widget.dart';

class UserScreen extends StatefulWidget {
  final UserModel user;

  const UserScreen({
    required this.user,
    Key? key,
  }) : super(key: key);

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> with AfterLayoutMixin {
  final state = UserState();
  final loadingState = LoadingState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Text(
                widget.user.username.titleCase(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      UserInfoWidget(user: widget.user),
                      Observer(
                        builder: (_) => state.postLoadingState.isLoading
                            ? const CircularProgressIndicator()
                            : PostsPreviewWidget(
                                posts: state.posts.take(3).toList(),
                              ),
                      ),
                      Observer(
                        builder: (_) => AlbumsPreviewWidget(
                          albums: state.albums.take(3).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
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

  @override
  void afterFirstLayout(BuildContext context) {
    getPreviews();
  }

  void getPreviews() {
    state
      ..getPosts()
      ..getAlbums();
  }
}

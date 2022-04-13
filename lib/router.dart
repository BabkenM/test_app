import 'package:auto_route/auto_route.dart';

import 'pages/album_screen/album_screen.dart';
import 'pages/albums_screen/albums_screen.dart';
import 'pages/home_screen/home_screen.dart';
import 'pages/post_screen/post_screen.dart';
import 'pages/posts_screen/posts_screen.dart';
import 'pages/user_screen/user_screen.dart';

export 'router.gr.dart';

@AdaptiveAutoRouter(
  preferRelativeImports: true,
  replaceInRouteName: 'Screen,Route',
  routes: [
    AdaptiveRoute(
      page: HomeScreen,
      initial: true,
    ),
    AdaptiveRoute(
      page: UserScreen,
    ),
    AdaptiveRoute(
      page: PostScreen,
    ),
    AdaptiveRoute(
      page: PostsScreen,
    ),
    AdaptiveRoute(
      page: AlbumsScreen,
    ),
    AdaptiveRoute(
      page: AlbumScreen,
    ),
  ],
)
class $Router {}

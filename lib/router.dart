import 'package:auto_route/auto_route.dart';

import 'pages/home_screen/home_screen.dart';
import 'pages/splash_screen/splash_screen.dart';
import 'pages/user_screen/user_screen.dart';

export 'router.gr.dart';

@AdaptiveAutoRouter(
  preferRelativeImports: true,
  replaceInRouteName: 'Screen,Route',
  routes: [
    AdaptiveRoute(
      page: SplashScreen,
      initial: true,
    ),
    AdaptiveRoute(
      page: HomeScreen,
    ),
    AdaptiveRoute(
      page: UserScreen,
    ),
  ],
)
class $Router {}

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import 'models/user_model/user_model.dart' as _i6;
import 'pages/home_screen/home_screen.dart' as _i2;
import 'pages/splash_screen/splash_screen.dart' as _i1;
import 'pages/user_screen/user_screen.dart' as _i3;

class Router extends _i4.RootStackRouter {
  Router([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    HomeRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.HomeScreen());
    },
    UserRoute.name: (routeData) {
      final args = routeData.argsAs<UserRouteArgs>();
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i3.UserScreen(user: args.user, key: args.key));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SplashRoute.name, path: '/'),
        _i4.RouteConfig(HomeRoute.name, path: '/home-screen'),
        _i4.RouteConfig(UserRoute.name, path: '/user-screen')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-screen');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.UserScreen]
class UserRoute extends _i4.PageRouteInfo<UserRouteArgs> {
  UserRoute({required _i6.UserModel user, _i5.Key? key})
      : super(UserRoute.name,
            path: '/user-screen', args: UserRouteArgs(user: user, key: key));

  static const String name = 'UserRoute';
}

class UserRouteArgs {
  const UserRouteArgs({required this.user, this.key});

  final _i6.UserModel user;

  final _i5.Key? key;

  @override
  String toString() {
    return 'UserRouteArgs{user: $user, key: $key}';
  }
}

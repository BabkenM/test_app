import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../mixins/after_layout_mixin.dart';
import '../../providers/screen_service.dart';
import '../../router.gr.dart';
import '../../store/home_state/home_state.dart';
import '../../store/loading_state/loading_state.dart';
import '../../widgets/loading_full_screen_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with AfterLayoutMixin {
  final state = GetIt.I<HomeState>();
  final loadingState = LoadingState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            RefreshIndicator(
              onRefresh: getUsers,
              child: Observer(
                /// TODO listView builder
                builder: (_) => ListView(
                  children: [
                    for (final user in state.users)
                      ListTile(
                        onTap: () {
                          router.push(UserRoute(user: user));
                        },
                        leading: Text(
                          '${user.id}',
                        ),
                        title: Row(
                          children: [
                            Expanded(
                              child: Text(
                                user.name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        subtitle: Row(
                          children: [
                            Expanded(
                              child: Text(
                                user.username,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      )
                  ],
                ),
              ),
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
  Future<void> afterFirstLayout(BuildContext context) async {
    await getUsers();
  }

  Future<void> getUsers() async {
    loadingState.startLoading();
    try {
      await state.getUsers();
    } on DioError catch (e) {
      log(e.message);
    } finally {
      loadingState.stopLoading();
    }
  }
}

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../mixins/after_layout_mixin.dart';
import '../../store/home_state/home_state.dart';
import '../../store/loading_state/loading_state.dart';
import '../../widgets/loading_full_screen_widget.dart';
import 'widgets/user_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with AfterLayoutMixin {
  final state = HomeState();
  final loadingState = LoadingState();

  @override
  void afterFirstLayout(BuildContext context) {
    getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            RefreshIndicator(
              onRefresh: getUsers,
              child: CustomScrollView(
                slivers: [
                  Observer(
                    builder: (_) => UsersList(
                      users: state.users.toList(),
                    ),
                  )
                ],
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

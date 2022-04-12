import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../extensions/context_extension.dart';
import '../extensions/widget_extension.dart';
import '../store/loading_state/loading_state.dart';

class LoadingFullScreenWidget extends StatelessWidget {
  final Color? backgroundColor;
  final LoadingState loadingState;

  const LoadingFullScreenWidget({
    required this.loadingState,
    this.backgroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => loadingState.isLoading
          ? Container(
              color:
                  backgroundColor ?? context.theme.background.withOpacity(.5),
              child: const Center(
                child: CircularProgressIndicator(),
              ).paddingAll(5),
            )
          : const SizedBox(),
    );
  }
}

import 'package:get_it/get_it.dart';

import 'auth/auth_state.dart';
import 'home_state/home_state.dart';

void registerStoreGetIt() {
  GetIt.I.registerSingleton(AuthState());
  GetIt.I.registerSingleton(HomeState());
}

void reRegisterStoreGetIt() {
  final authState = GetIt.I<AuthState>();
  final homeState = GetIt.I<HomeState>();
  GetIt.I.unregister(instance: authState);
  GetIt.I.unregister(instance: homeState);
  registerStoreGetIt();
}

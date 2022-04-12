import 'package:mobx/mobx.dart';

import '../../http/repositories/json_placeholder_repository.dart';
import '../../models/user_model/user_model.dart';

part 'home_state.g.dart';

class HomeState = _HomeState with _$HomeState;

abstract class _HomeState with Store {
  @observable
  ObservableList<UserModel> users = ObservableList<UserModel>();

  @action
  Future<void> getUsers() async {
    final res = await JsonPlaceholderRepository.getUsers();
    users = List.generate(res.length, (i) => UserModel.fromJson(res[i]))
        .asObservable();
  }
}

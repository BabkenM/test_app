// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeState on _HomeState, Store {
  final _$usersAtom = Atom(name: '_HomeState.users');

  @override
  ObservableList<UserModel> get users {
    _$usersAtom.reportRead();
    return super.users;
  }

  @override
  set users(ObservableList<UserModel> value) {
    _$usersAtom.reportWrite(value, super.users, () {
      super.users = value;
    });
  }

  final _$getUsersAsyncAction = AsyncAction('_HomeState.getUsers');

  @override
  Future<void> getUsers() {
    return _$getUsersAsyncAction.run(() => super.getUsers());
  }

  @override
  String toString() {
    return '''
users: ${users}
    ''';
  }
}

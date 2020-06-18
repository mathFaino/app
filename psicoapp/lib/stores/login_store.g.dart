// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStore, Store {
  Computed<bool> _$loginTodoComputed;

  @override
  bool get loginTodo => (_$loginTodoComputed ??=
          Computed<bool>(() => super.loginTodo, name: '_LoginStore.loginTodo'))
      .value;

  final _$usercredentialAtom = Atom(name: '_LoginStore.usercredential');

  @override
  String get usercredential {
    _$usercredentialAtom.reportRead();
    return super.usercredential;
  }

  @override
  set usercredential(String value) {
    _$usercredentialAtom.reportWrite(value, super.usercredential, () {
      super.usercredential = value;
    });
  }

  final _$passwordAtom = Atom(name: '_LoginStore.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$_LoginStoreActionController = ActionController(name: '_LoginStore');

  @override
  dynamic changeName(String value) {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.changeName');
    try {
      return super.changeName(value);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePass(String value) {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.changePass');
    try {
      return super.changePass(value);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic entrar() {
    final _$actionInfo =
        _$_LoginStoreActionController.startAction(name: '_LoginStore.entrar');
    try {
      return super.entrar();
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
usercredential: ${usercredential},
password: ${password},
loginTodo: ${loginTodo}
    ''';
  }
}

import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:psicoapp/consts/constsAPI.dart';
import 'package:psicoapp/models/key.dart';
import 'package:psicoapp/models/user.dart';
import 'package:http/http.dart' as http;

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store{
  User user;

  @observable
  String usercredential = '';

  @action
  changeName(String value){
    usercredential = value;
  }
  @observable
  String password = '';

  @action
  changePass(String value){
    password = value;
  }

  @computed
  bool get loginTodo {
    return (usercredential != '') && (password != '');
  }

  @action
  entrar() {
    if(loginTodo){
      user = User(username: usercredential, pass: password );
      buscaToken().then((token){
        print(token.token);
      });
    }
  }

  Future<Key> buscaToken() async{
    try{
      final response = await http.post(ConstsAPi.baseApiURL+'api-token-auth/', body: user.toJson());
      var decodedJson = jsonDecode(response.body);
      return Key.fromJson(decodedJson);
    }catch(_){
      print(_);
      return null;
    }
  }
  //User usuario;
}
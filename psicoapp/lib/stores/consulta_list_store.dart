import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'package:psicoapp/consts/constsAPI.dart';
import 'package:psicoapp/models/consulta.dart';

part 'consulta_list_store.g.dart';

class ConsultaListStore = _ConsultaListStore with _$ConsultaListStore;

abstract class _ConsultaListStore with Store{
  @observable
  Consulta _consulta;

  @computed
  Consulta get consulta => _consulta;

  @action
  listConsultas(){
      buscaConsultas().then((value) {
        _consulta = value;
        print(_consulta);
      });
  }


  Future<Consulta> buscaConsultas() async{
    try{
      final response = await http.get(ConstsAPi.baseApiURL+'consulta/');
      var decodedJson = jsonDecode(response.body);
      return Consulta.fromJson(decodedJson);
    }catch(_){
      print(_);
      return null;
    }
  }
}
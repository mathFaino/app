import 'package:mobx/mobx.dart';

part 'consulta_reg_store.g.dart';

class ConsultaRegStore = _ConsultaRegStore with _$ConsultaRegStore;

abstract class _ConsultaRegStore with Store{
  @observable
  bool teste = false;

  @action
  changeTeste(bool value){
    teste = value;
  }

  @observable
  String relatorio;

  @action
  changeRelatorio(String value){
    relatorio = value;
  }
  @observable
  bool sono = false;

  @action
  changeSono(){
    sono = !sono;
  }
  @observable
  bool apetite = false;

  @action
  changeApetite(){
    apetite = !apetite;
  }
  @observable
  bool peso = false;

  @action
  changePeso(){
    peso = !peso;
  }
}
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_store.g.dart';

class CadastroStore = _CadastroStore with _$CadastroStore;

abstract class _CadastroStore with Store {
  final picker = ImagePicker();

  @observable
  File _image;

  @action
  Future selectImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    _image = File(pickedFile.path);
  }

  @computed
  File get getImage => _image;

  @observable
  String _nome = '';

  @action
  changeName(String value) {
    _nome = value;
  }

  @observable
  String _email = '';

  @action
  changeMail(String value) {
    _email = value;
  }

  @observable
  String _crp = '';

  @action
  changeCrp(String value) {
    _crp = value;
  }

  @observable
  String _crm = '';

  @action
  changeCrm(String value) {
    _crm = value;
  }

  @observable
  String _cpf = '';

  @action
  changeCpf(String value) {
    _cpf = value;
  }

  @observable
  String _telefone = '';

  @action
  changePhone(String value) {
    _telefone = value;
  }

  @observable
  String _username = '';

  @action
  changeUsername(String value){
    _username = value;
  }

  @observable
  String _password = '';

  @action
  changePassword(String value){
    _password = value;
  }

  @observable
  bool ver = false;

  @computed
  verificados(){
    if((_password != '' && _password.length >= 6 ) && (_username != '') &&
        (_cpf != '' && _cpf.length == 11) && (_crp != '' || _crm != '') &&
        (_email.contains('@') && _email.contains('.com') && (_nome != ''))){

      ver = true;
    }else{
      ver = false;
    }
  }
}
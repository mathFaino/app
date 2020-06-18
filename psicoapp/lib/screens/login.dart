import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:psicoapp/stores/login_store.dart';
import 'package:psicoapp/widgets/textCamp.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  LoginStore loginStore = LoginStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFFE9E3E3),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.event_seat,color: Color(0xFF7D2941),size: 80,),
              Text(
                "PSICO-APP",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 38,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 120,),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Login: ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ],),
              SizedBox(height: 10,),
              TextCamp(
                enabledCamp: true,
                inputType: TextInputType.text,
                label: "Usuário: ",
                prefix: Icons.person,
                onChanged: loginStore.changeName,
              ),
              SizedBox(
                height: 10,
              ),
              TextCamp(
                enabledCamp: true,
                obscure: true,
                inputType: TextInputType.text,
                label: "Senha: ",
                prefix: Icons.lock_outline,
                onChanged: loginStore.changePass,
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                padding: EdgeInsets.only(top: 13, bottom: 13, left: 10, right: 10),
                color: Color(0xFF7D2941),
                onPressed: (){
                  loginStore.entrar();
                  //Navigator.of(context).popAndPushNamed('/Home');
                  },
                child: Text(
                  "Entrar",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFE9E3E3)
                  ),
                ),
              ),

              Observer(
                builder: (_){
                  return  FlatButton(
                      padding: EdgeInsets.only(top: 13, bottom: 13, left: 10, right: 10),
                      color: Colors.transparent,
                      onPressed: (){Navigator.of(context).pushNamed('/Cadastro');},
                      child: loginStore.loginTodo == false ? Text(
                        'Cadastre-se',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black
                        ),
                      ) : Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.purple),),)
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

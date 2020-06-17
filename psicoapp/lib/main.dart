import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psicoapp/screens/addPaciente.dart';
import 'package:psicoapp/screens/consulta.dart';
import 'package:psicoapp/screens/home.dart';
import 'package:psicoapp/screens/listaConsultas.dart';
import 'package:psicoapp/screens/listaPacientes.dart';
import 'package:psicoapp/screens/perfil.dart';
import 'package:psicoapp/screens/addNewPaciente.dart';
import 'package:psicoapp/screens/addNewConsulta.dart';
import 'package:psicoapp/screens/addPaciente.dart';
import 'package:psicoapp/screens/perfilPaciente.dart';
import 'package:psicoapp/screens/cadastroEspecialista.dart';
import 'package:psicoapp/screens/login.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}
class MyApp extends StatelessWidget {
  static const String titulo = 'Psico-APP';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScopeNode actFocus = FocusScope.of(context);
        if(!actFocus.hasPrimaryFocus) {
          actFocus.unfocus();
        }
      },
      child: MaterialApp(
        title: titulo,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: Login(title: titulo),
        routes: <String, WidgetBuilder>{
          "/AddNewPaciente" : (BuildContext context) => AddnewPaciente(),
          "/AddNewConsulta" : (BuildContext context) => AddNewConsulta(),
          "/AddPaciente" : (BuildContext context) => AddPaciente(),
          "/PerfilPaciente" : (BuildContext context) => PerfilPaciente(),
          "/Consulta" : (BuildContext context) => Consulta(),
          "/Login" : (BuildContext context) => Login(title: titulo,),
          "/Cadastro" : (BuildContext context) => CadastroEspecialista(),
          "/Home" : (BuildContext context) => MyHomePage(title: titulo,),
        },
      ),
    );
  }
}



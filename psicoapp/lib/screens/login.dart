import 'package:flutter/material.dart';
import 'package:psicoapp/widgets/textCamp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFFE9E3E3),
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
            ),
            SizedBox(
              height: 10,
            ),
            TextCamp(
              enabledCamp: true,
              inputType: TextInputType.text,
              label: "Senha: ",
              prefix: Icons.lock_outline,
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              padding: EdgeInsets.only(top: 13, bottom: 13, left: 10, right: 10),
              color: Color(0xFF7D2941),
              onPressed: (){},
              child: Text(
                "Entrar",
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFFE9E3E3)
                ),
              ),
            ),

            FlatButton(
              padding: EdgeInsets.only(top: 13, bottom: 13, left: 10, right: 10),
              color: Colors.transparent,
              onPressed: (){},
              child: Text(
                "Cadastrar-se",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

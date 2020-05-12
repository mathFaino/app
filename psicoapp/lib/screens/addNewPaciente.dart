import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psicoapp/widgets/textCamp.dart';

class AddnewPaciente extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final double largura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4B2637),
        elevation: 2,
        title: Text("Adicionar Novo Paciente"),
      ),
      body:  Container(
          padding: EdgeInsets.only(left: 10,right: 10,top: 10),
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xFFE9E3E3),
          ),
          child: SingleChildScrollView(

            child: Column(
              children: <Widget>[
                SizedBox(height: 5,),
                TextCamp(
                  enabled: true,
                  inputType: TextInputType.text,
                  label: "Nome: ",
                  prefix: Icon(Icons.person),
                ),
                SizedBox(
                  height: 10,
                ),
                TextCamp(
                  enabled: true,
                  inputType: TextInputType.number,
                  label: "CPF: ",
                  prefix: Icon(Icons.recent_actors),
                ),
                SizedBox(
                  height: 10,
                ),
                TextCamp(
                  enabled: true,
                  inputType: TextInputType.number,
                  label: "Cartão SUS: ",
                  prefix: Icon(Icons.branding_watermark),
                ),
                SizedBox(
                  height: 10,
                ),
                TextCamp(
                  enabled: true,
                  inputType: TextInputType.datetime,
                  label: "Data de Nascimento: ",
                  prefix: Icon(Icons.event),
                ),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                  padding: EdgeInsets.only(left: (largura * (10/100)),right: (largura * (10/100)),bottom: (largura * (4/100)),
                  top: (largura * (4/100))),

                  color: Color(0xFF7D2941),
                  onPressed: (){},
                  child: Text(
                    "Salvar",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFE9E3E3)
                    ),
                  ),
                )
              ],
            ),
          ),
      ),
    );
  }
}
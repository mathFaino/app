import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatienteTile extends StatelessWidget{

  PatienteTile({this.nome,this.data});

  final String nome;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFB3A2A2),
      elevation: 5,
      margin: EdgeInsets.all(5),
      child: Column(
        children: <Widget>[
          Text(
            nome,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          Divider(
            color: Color(0xFF7D2941),
          ),
          GestureDetector(
            child: Row(
              children: <Widget>[
                Text("Última consulta em: "),
                Text(data, style: TextStyle(color: Color(0xFF4B2637) ),),
              ],
            ),
            onTap: (){},
          )
        ],
      ),

    );
  }

}
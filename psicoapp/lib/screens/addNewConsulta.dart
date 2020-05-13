import 'package:flutter/material.dart';
import 'package:psicoapp/widgets/myCustomCheckbox.dart';
import 'package:psicoapp/widgets/textCamp.dart';

class AddNewConsulta extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registrar Consulta"),
        backgroundColor: Color(0xFF4B2637),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
        decoration: BoxDecoration(
            color: Color(0xFFE9E3E3)
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              TextCamp(label: "Video", prefix: Icons.camera_alt, inputType: TextInputType.text, ),
              MyCustomCheckbox(prefix: Icons.airline_seat_individual_suite, text: "Sono Alterado", onChanged: (_){},),
              MyCustomCheckbox(prefix: Icons.fastfood, text: "Apetite Alterado", onChanged: (_){},),
              MyCustomCheckbox(prefix: Icons.pregnant_woman , text: "Peso Alterado", onChanged: (_){},),

            ],
          ),
        ),
      ),
    );
  }
}
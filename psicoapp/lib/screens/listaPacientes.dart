import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psicoapp/widgets/patientTile.dart';
import 'package:psicoapp/widgets/teste.dart';

class ListaPaciente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        color: Color(0xFFE9E3E3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: PatienteTile(nome: "Matheus Faino", data: "20/10/2019",),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psicoapp/widgets/patientTile.dart';
import 'package:psicoapp/widgets/textCamp.dart';

class ListaPaciente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        //height: MediaQuery.of(context).size.height - 56,
        padding: EdgeInsets.all(10),
        color: Color(0xFFE9E3E3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only( top: 20),
              child: PatienteTile(nome: "Matheus Faino", data: "20/10/2019",),
            ),
            PatienteTile(nome: "Matheus Marques Faino da Silva Johanson Jr.", data: "20/10/2019",),
            PatienteTile(nome: "Matheus Faino", data: "20/10/2019",),
            PatienteTile(nome: "Matheus Faino", data: "20/10/2019",),
            PatienteTile(nome: "Matheus Faino", data: "20/10/2019",),
            PatienteTile(nome: "Matheus Faino", data: "20/10/2019",),
            PatienteTile(nome: "Matheus Faino", data: "20/10/2019",),
            PatienteTile(nome: "Matheus Faino", data: "20/10/2019",),
            PatienteTile(nome: "Matheus Faino", data: "20/10/2019",),
            PatienteTile(nome: "Matheus Faino", data: "20/10/2019",),
            PatienteTile(nome: "Matheus Faino", data: "20/10/2019",),
            PatienteTile(nome: "Matheus Faino", data: "20/10/2019",),
            PatienteTile(nome: "Matheus Faino", data: "20/10/2019",),

          ],
        ),
      ),
    );
  }
}
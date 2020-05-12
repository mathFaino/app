import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psicoapp/widgets/myCustomClip.dart';
import 'package:psicoapp/widgets/patientTile.dart';
import 'package:psicoapp/widgets/textCamp.dart';

class ListaPaciente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        //height: MediaQuery.of(context).size.height - 56,
        padding: EdgeInsets.fromLTRB(10,10,10,0),
        color: Color(0xFFE9E3E3),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipPath(
                clipper: MyCustomClip(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height/2.7,
                  decoration: BoxDecoration(
                      color: Colors.red
                  ),
                ),
              ),
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
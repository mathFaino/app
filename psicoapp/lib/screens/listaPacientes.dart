import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psicoapp/widgets/myCustomClip.dart';
import 'package:psicoapp/widgets/patientTile.dart';
import 'package:psicoapp/widgets/textCamp.dart';

class ListaPaciente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          //height: MediaQuery.of(context).size.height - 56,
          padding: EdgeInsets.fromLTRB(10, 120, 10, 0),
          color: Color(0xFFE9E3E3),
          child: SingleChildScrollView(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: PatienteTile(nome: "Matheus Faino", data: "20/10/2019",),
                ),
                PatienteTile(nome: "Matheus Marques Faino da Silva Johanson Jr.",
                  data: "20/10/2019",),
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
        ),
        Positioned(
            top: 0,
            child: Column(
              children: <Widget>[
                Container(

                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 40, left: 10, right: 10),
                  height: 120,
                  decoration: BoxDecoration(
                    color: Color(0xFF4B2637),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Color(0xFFB3A2A2),),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFE9E3E3)),borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green),borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),

                /*
                * Configurar o clipper após a construção
                * */
                ClipPath(
                  clipper: MyCustomClip(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    //MediaQuery.of(context).size.height/5,
                    decoration: BoxDecoration(
                        color: Color(0xFF4B2637)
                    ),
                  ),
                ),
              ],
            )
        ),
      ],
    );
  }
}



/**/
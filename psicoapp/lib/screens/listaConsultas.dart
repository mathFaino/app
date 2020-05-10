
import 'package:flutter/material.dart';
import 'package:psicoapp/widgets/appointmentCard.dart';

class ListaConsultas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
        /*
        * quando utilizar os dados vindo da API modificar o tamanho do container de acordo com a quantidade de itens
        * */
        //height: MediaQuery.of(context).size.height - 56,
        padding: EdgeInsets.all(10),
        color: Color(0xFFE9E3E3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20,),
            AppointmentCard(nome: "Matheus Marques Faino", data: "20/10/2020", cod: 1, ),
            AppointmentCard(nome: "Matheus Marques Faino", data: "20/10/2020", cod: 2),
            AppointmentCard(nome: "Matheus Marques Faino", data: "20/10/2020", situacao: true, cod: 3),
            AppointmentCard(nome: "Matheus Marques Faino", data: "20/10/2020", situacao: null, cod: 20),
            AppointmentCard(nome: "Matheus Marques Faino", data: "20/10/2020", situacao: null,cod: 12),
          ],
        ),
      ),
    );
  }
}
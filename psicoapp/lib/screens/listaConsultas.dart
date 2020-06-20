
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:psicoapp/widgets/appointmentCard.dart';

class ListaConsultas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      /*
        * quando utilizar os dados vindo da API modificar o tamanho do container de acordo com a quantidade de itens
        * */
      //height: MediaQuery.of(context).size.height - 56,
      padding: EdgeInsets.all(10),
      color: Color(0xFFE9E3E3),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Observer(
          builder: (BuildContext contex){
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index){
                return GestureDetector(
                  child: /*Card(
                    color: Color(0xFFE9E3E3),
                    elevation: 5,
                    shape: Border(left: BorderSide(color: situacao == null ? Colors.red : Colors.green, width: 6,)),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 10, top: 3),
                              child:  Container(

                                padding: EdgeInsets.only(left: 4),
                                width: 70,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Color(0xFFE9E3E3),
                                    boxShadow: [BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5
                                    )]
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Nº: ",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 14
                                      ),
                                    ),
                                    Flexible(
                                      child:  Text(
                                        cod.toString(),
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 14
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 6, top: 5,),
                          child: Text(
                            nome,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 5, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                data,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Container(

                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  color: Color(0xFFE9E3E3),

                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5.0
                                    )],
                                ),
                                child: Center(
                                  heightFactor: 30,
                                  widthFactor: 30,
                                  child:  Icon(
                                    situacao == null ? Icons.report_problem : Icons.check_box,
                                    color: situacao == null ? Colors.red : Colors.green,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )*/Container(),
                  onTap: (){
                    print("Tap'ado'");
                    Navigator.of(context).pushNamed('/Consulta');
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}



/*
Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20,),
            AppointmentCard(nome: "Matheus Marques Faino", data: "20/10/2020", cod: 1, ),
            AppointmentCard(nome: "Theo Marques Faino", data: "20/10/2020", cod: 2),
            AppointmentCard(nome: "Matheus Marques Faino", data: "20/10/2020", situacao: true, cod: 3),
            AppointmentCard(nome: "Luana Borges", data: "20/10/2020", situacao: true, cod: 4),
            AppointmentCard(nome: "Matheus Marques Faino", data: "20/10/2020", situacao: true, cod: 5),
            AppointmentCard(nome: "Matheus Marques Faino", data: "20/10/2020", situacao: true, cod: 6),
            AppointmentCard(nome: "Matheus Marques Faino", data: "20/10/2020", situacao: true, cod: 7),
            AppointmentCard(nome: "Matheus Marques Faino", data: "20/10/2020", situacao: true, cod: 8),
            AppointmentCard(nome: "Matheus Marques Faino", data: "20/10/2020", situacao: true, cod: 9),
            AppointmentCard(nome: "Matheus Marques Faino", data: "20/10/2020", situacao: true, cod: 10),
            AppointmentCard(nome: "Matheus Marques Faino", data: "20/10/2020", situacao: null, cod: 11),
            AppointmentCard(nome: "Matheus Marques Faino", data: "20/10/2020", situacao: null,cod: 12),
          ],
        ),
 */
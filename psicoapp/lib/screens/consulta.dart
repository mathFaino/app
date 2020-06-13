import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psicoapp/widgets/analised_video.dart';
import 'package:psicoapp/widgets/myCustomCheckbox.dart';
import 'package:psicoapp/widgets/textCamp.dart';

class Consulta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consulta"),
        backgroundColor: Color(0xFF4B2637),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
        decoration: BoxDecoration(
            color: Color(0xFFE9E3E3)
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Row(
                  children: <Widget>[
                    Text(
                      "Paciente: ",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: Text(
                        "Matheus Marques Faino Johanson Perl",
                        style: TextStyle(fontSize: 18),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(color: Color(0xFF7D2941),),
              Card(
                color:Color(0xFFE9E3E3) ,
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Especialista: ",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                          ),
                          Flexible(
                            child: Text(
                              "Larrive Marques da Silva Faino",
                              style: TextStyle(fontSize: 18),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: <Widget>[
                          Text(
                            "CRM/CRP: ",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                          ),
                          Flexible(
                            child: Text(
                              "12/12345",
                              style: TextStyle(fontSize: 18),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ),
              SizedBox(height: 5,),
              Container(
                decoration: ShapeDecoration(shape: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF7D2941),width: 2.5))),
                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width - 10,
                height: 180,
                child: SingleChildScrollView(
                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing '
                      'elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                      ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi'
                      ' ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit'
                      ' in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'
                      '  Excepteur sint occaecat cupidatat non proident, sunt in culpa qui '
                      'officia deserunt mollit anim id est laborum',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 100,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              MyCustomCheckbox(prefix: Icons.airline_seat_individual_suite, text: "Sono Alterado", onChanged: (_){},),
              MyCustomCheckbox(prefix: Icons.fastfood, text: "Apetite Alterado", onChanged: (_){}, ativo: true,),
              MyCustomCheckbox(prefix: Icons.fitness_center , text: "Peso Alterado", onChanged: (_){},),
              SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  Text(
                    "Data: ",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                  Flexible(
                    child: Text(
                      "10/07/2019",
                      style: TextStyle(fontSize: 18),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              //AnaliseVideo(situacao: false, action: (){},)
              AnaliseVideo(depressao: false ,emotion1: 'Felicidade: 45', emotion2: 'Neutro: 35', emotion3: 'Raiva: 20', situacao: true, action: (){} , dataAnalise: '10/06/2020',)
            ],
          ),
        ),
      ),
    );
  }
}
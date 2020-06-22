import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:psicoapp/stores/consulta_reg_store.dart';
import 'package:psicoapp/stores/perfil_store.dart';
import 'package:psicoapp/widgets/myCustomCheckbox.dart';
import 'package:psicoapp/widgets/textCamp.dart';

class AddNewConsulta extends StatefulWidget {
  @override
  _AddNewConsultaState createState() => _AddNewConsultaState();
}

class _AddNewConsultaState extends State<AddNewConsulta> {

  @override
  Widget build(BuildContext context) {
    PerfilStore perfilStore = Provider.of<PerfilStore>(context);
    final position = perfilStore.posPaciente;
    ConsultaRegStore consultaRegStore = ConsultaRegStore();
    final double largura = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Registrar Consulta"),
        backgroundColor: Color(0xFF4B2637),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode actFocus = FocusScope.of(context);
          if (!actFocus.hasPrimaryFocus) {
            actFocus.unfocus();
          }
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
          decoration: BoxDecoration(color: Color(0xFFE9E3E3)),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Card(
                    elevation: 10,
                    color: Color(0xFFE9E3E3),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                      child: Row(
                        children: <Widget>[
                          Text("Paciente:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          SizedBox(width: 5,),
                          Observer(
                            builder: (_){
                              return Flexible(
                                child: Text(perfilStore.especialista.atende[position].paciente.nome, style: TextStyle(fontSize: 18),overflow: TextOverflow.ellipsis,),
                              );
                            },
                          )
                        ],
                      ),
                    )
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  enabled: false,
                  onChanged: (_){},
                  maxLines: 1,
                  cursorColor: Color(0xFF7D2941),
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF4B2637),width: 2.5)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF7D2941), width: 2.5)
                    ),
                    disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                    prefixIcon: Icon(Icons.camera_alt, color: Color(0xFFB3A2A2), ),
                    labelText: 'Video',
                    hoverColor: Color(0xFFB3A2A2),
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      onPressed: (){
                        Navigator.of(context).pushNamed('/Video');
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add_a_photo),
                          SizedBox(width: 5,),
                          Text('Adicionar Video', style: TextStyle(color: Color(0xFFE9E3E3),fontSize: 16 ),),
                        ],
                      ),
                      shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),borderRadius: BorderRadius.circular(20)),
                      color: Color(0xFF7D2941),
                    ),
                  ],
                ),
                Divider(color:Color(0xFF4B2637) ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Relatório: ',
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  decoration: ShapeDecoration(
                      shape: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFF7D2941), width: 2.5))),
                  width: MediaQuery.of(context).size.width - 10,
                  height: 180,
                  child: SingleChildScrollView(
                    child: TextField(
                      textAlign: TextAlign.justify,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      minLines: 6,
                      style: TextStyle(fontSize: 18),
                      cursorColor: Color(0xFF7D2941),
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent))),
                    ),
                  ),
                ),
                Observer(
                  builder: (_){
                    return MyCustomCheckbox(
                      prefix: Icons.airline_seat_individual_suite,
                      text: "Sono Alterado",
                      ativo: consultaRegStore.sono,
                      onChanged: (bool m){
                        consultaRegStore.sono = m;
                      },
                    );
                  },
                ),
                Observer(builder: (_){
                  return MyCustomCheckbox(
                    prefix: Icons.fastfood,
                    text: "Apetite Alterado",
                    ativo: consultaRegStore.apetite,
                    onChanged: (bool v) {
                      consultaRegStore.apetite = v;
                    },
                  );
                },),
                Observer(
                  builder: (_){
                    return MyCustomCheckbox(
                      prefix: Icons.fitness_center,
                      text: "Peso Alterado",
                      ativo: consultaRegStore.peso,
                      onChanged: (bool v) {
                        consultaRegStore.peso = v;
                      },
                    );
                  },
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      padding: EdgeInsets.only(left: (largura * (10/100)),right: (largura * (10/100)),bottom: (largura * (4/100)),
                          top: (largura * (4/100))),

                      color: Color(0xFF7D2941),
                      onPressed: (){},
                      child: Text(
                        "Registrar",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFFE9E3E3)
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



/*
 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: (){},
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.image),
                        Text('Galeria', style: TextStyle(color: Color(0xFFE9E3E3),fontSize: 16 ),),
                      ],
                    ),
                    shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),borderRadius: BorderRadius.circular(20)),
                    color: Color(0xFF7D2941),
                  ),
                  const SizedBox(width: 10,),
                  FlatButton(
                    onPressed: (){},
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.camera),
                        Text('Câmera',style: TextStyle(color: Color(0xFFE9E3E3),fontSize: 16 ),),
                      ],
                    ),
                    shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),borderRadius: BorderRadius.circular(20)),
                    color: Colors.blue[900],
                  ),
                ],
              ),
*/
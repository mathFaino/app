import 'package:flutter/material.dart';
import 'package:psicoapp/widgets/itemTile.dart';
import 'package:psicoapp/widgets/myCustomClipB.dart';
import 'package:psicoapp/widgets/textCamp.dart';

class CadastroEspecialista extends StatefulWidget {
  @override
  _CadastroEspecialistaState createState() => _CadastroEspecialistaState();
}

class _CadastroEspecialistaState extends State<CadastroEspecialista> {
  @override
  BuildContext get context => super.context;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro"),
          backgroundColor: Color(0xFF4B2637),
        ),
        body: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: (MediaQuery.of(context).size.height - 56) / 4,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFF4B2637),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    height: (MediaQuery.of(context).size.height - 56) -
                        ((MediaQuery.of(context).size.height - 56) / 6),
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFFE9E3E3),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 120,
                        ),
                        TextCamp(
                          enabledCamp: true,
                          inputType: TextInputType.text,
                          label: "Nome: ",
                          prefix: Icons.person,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextCamp(
                          enabledCamp: true,
                          inputType: TextInputType.emailAddress,
                          label: "Email: ",
                          prefix: Icons.alternate_email,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextCamp(
                          enabledCamp: true,
                          inputType: TextInputType.number,
                          label: "CRP: ",
                          prefix: Icons.recent_actors,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextCamp(
                          enabledCamp: true,
                          inputType: TextInputType.number,
                          label: "CRM: ",
                          prefix: Icons.recent_actors,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextCamp(
                          enabledCamp: true,
                          inputType: TextInputType.number,
                          label: "Telefone: ",
                          prefix: Icons.branding_watermark,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextCamp(
                          enabledCamp: true,
                          inputType: TextInputType.text,
                          label: "Senha: ",
                          prefix: Icons.lock_outline,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FlatButton(
                          padding: EdgeInsets.only(top: 13, bottom: 13, left: 10, right: 10),
                          color: Color(0xFF7D2941),
                          onPressed: (){},
                          child: Text(
                            "Finalizar",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFFE9E3E3)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 86,
                child: Column(
                  children: <Widget>[
                    Container(
                        child: CircleAvatar(
                            radius: 101,
                            backgroundColor: Color(0xFFE9E3E3),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              clipBehavior: Clip.hardEdge,
                              child: Icon(
                                Icons.add_a_photo,
                                color: Color(0xFFB3A2A2),
                                size: 90,
                              ),
                            )

                            /**/
                            ),
                        padding: const EdgeInsets.all(2.0), // borde width
                        decoration: BoxDecoration(
                          color: const Color(0xFF7D2941), // border color
                          shape: BoxShape.circle,
                        )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

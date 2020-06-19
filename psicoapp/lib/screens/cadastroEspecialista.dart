import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:psicoapp/stores/cadastro_store.dart';
import 'package:psicoapp/widgets/itemTile.dart';
import 'package:psicoapp/widgets/myCustomClipB.dart';
import 'package:psicoapp/widgets/textCamp.dart';

class CadastroEspecialista extends StatefulWidget {
  @override
  _CadastroEspecialistaState createState() => _CadastroEspecialistaState();
}

class _CadastroEspecialistaState extends State<CadastroEspecialista> {
  CadastroStore cadastroStore = CadastroStore();

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
          physics: ClampingScrollPhysics(),
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
                    //height: (MediaQuery.of(context).size.height - 56) -
                    //                        ((MediaQuery.of(context).size.height - 56) / 15),
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
                          onChanged: cadastroStore.changeName,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextCamp(
                          enabledCamp: true,
                          inputType: TextInputType.emailAddress,
                          label: "Email: ",
                          prefix: Icons.alternate_email,
                          onChanged: cadastroStore.changeMail,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextCamp(
                          enabledCamp: true,
                          inputType: TextInputType.number,
                          label: "CRP: ",
                          prefix: Icons.recent_actors,
                          onChanged: cadastroStore.changeCrp,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextCamp(
                          enabledCamp: true,
                          inputType: TextInputType.number,
                          label: "CRM: ",
                          prefix: Icons.recent_actors,
                          onChanged: cadastroStore.changeCrm,
                        ),
                        SizedBox(
                          height: 10,
                        ),TextCamp(
                          enabledCamp: true,
                          inputType: TextInputType.number,
                          label: "CPF: ",
                          prefix: Icons.contact_mail,
                          onChanged: cadastroStore.changeCpf,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextCamp(
                          enabledCamp: true,
                          inputType: TextInputType.number,
                          label: "Telefone: ",
                          prefix: Icons.branding_watermark,
                          onChanged: cadastroStore.changePhone,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Color(0xFF4B2637),
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextCamp(
                          enabledCamp: true,
                          inputType: TextInputType.text,
                          label: "Username: ",
                          prefix: Icons.account_circle,
                          onChanged: cadastroStore.changeUsername,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextCamp(
                          enabledCamp: true,
                          inputType: TextInputType.text,
                          label: "Senha: ",
                          prefix: Icons.lock_outline,
                          obscure: true,
                          onChanged: cadastroStore.changePassword,
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
                       Container(
                         child:  Observer(builder: (_){
                           return cadastroStore.ver == false ?
                           Text('Ainda não!') :
                           Center(child: CircularProgressIndicator(),);
                         }),
                       )
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
                        child: GestureDetector(
                          onTap: cadastroStore.selectImage,
                          child: Observer(
                            builder: (_){
                              return CircleAvatar(
                                  backgroundImage: cadastroStore.getImage == null ? AssetImage('images/imagem.jpg'):
                                     FileImage(cadastroStore.getImage),
                                  radius: 101,
                                  backgroundColor: Color(0xFFE9E3E3),
                              );
                            },
                          ),
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

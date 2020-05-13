import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psicoapp/widgets/textCamp.dart';

class Consulta extends StatelessWidget {
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
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextCamp(label: "Data", enabledCamp: true, inputType: TextInputType.datetime,),
            )
          ],
        ),
      ),
    );
  }
}
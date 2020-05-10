import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: (MediaQuery.of(context).size.height - 56)/3,
                width: double.infinity,
                color:  Color(0xFF4B2637),
              ),
              Container(
                height: (MediaQuery.of(context).size.height - 56)  - ((MediaQuery.of(context).size.height - 56)/3),
                width: double.infinity,
                color:  Color(0xFFE9E3E3),
              ),
            ],
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height - 56)/5,
            child: Container(
                child: CircleAvatar(
                  radius: 101,
                  backgroundColor: Color(0xFFE9E3E3),
                  foregroundColor: Colors.red,
                  child: Icon(
                    Icons.adb,
                    color: Color(0xFFB3A2A2),
                    size: 90,
                  ),
                ),
                padding: const EdgeInsets.all(2.0), // borde width
                decoration: new BoxDecoration(
                  color: const Color(0xFF7D2941), // border color
                  shape: BoxShape.circle,
                )
            ),
          ),
        ],
      ) ,
    );
  }
}
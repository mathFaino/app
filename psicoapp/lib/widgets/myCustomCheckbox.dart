import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomCheckbox extends StatelessWidget{

  MyCustomCheckbox({this.text, this.prefix, this.onChanged});

  final String text;
  final IconData prefix;
  final Function onChanged;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: false,
          onChanged: onChanged,
        ),
        Icon(prefix, color: Color(0xFFB3A2A2),),
        SizedBox(width: 5,),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
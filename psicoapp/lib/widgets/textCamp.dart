import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextCamp extends StatelessWidget{

  TextCamp({this.label, this.prefix, this.sufix, this.onChanged, this.inputType, this.obscure, this.controller, this.enabled});

  final String label;
  final Icon prefix;
  final Icon sufix;
  final Function (String) onChanged;
  final TextInputType inputType;
  final bool obscure;
  final bool enabled;
  final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure == null ? false : obscure,
      enabled: enabled == null ?  true : enabled ,
      controller: controller,
      onChanged: onChanged,
      maxLines: 1,
      cursorColor: Color(0xFF7D2941),
      keyboardType: inputType,
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF4B2637),width: 2.5)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF7D2941), width: 2.5)
        ),

        enabled: enabled != null ?  true : enabled ,
        prefixIcon: prefix,
        labelText: label,
        suffixIcon: sufix,
        hoverColor: Color(0xFFB3A2A2),
        labelStyle: TextStyle(color: Colors.black),
      ),
      style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
    );
  }
}
import 'package:flutter/material.dart';

class MyCustomClip extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0.0, 200);
    path.lineTo(200, 100.0);

    var controlPoint = Offset(((size.width/2)/2), ((size.height/2)/2));//X = ((size.width/2)/2) e Y = ((size.heigth/2)/2) ponto de controle
    var endPoint = Offset(size.width, 0);//pontos da reta x= valor máximo e y = 0
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy,
        endPoint.dx, endPoint.dy);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper !=this;
  }

}
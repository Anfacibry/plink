import 'package:flutter/material.dart';

class MyCustomClipp extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double altura = size.height;
    double largura = size.width;

    Path path = Path();

    path.lineTo(0, altura);

    path.quadraticBezierTo(largura * .5, altura - 100, largura, altura);
    path.lineTo(largura, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

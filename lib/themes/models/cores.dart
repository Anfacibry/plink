import 'package:flutter/cupertino.dart';

class Cores {
  final BuildContext context;
  static const Color corPrimaria = Color(0xFFFEF9F9);
  static const Color corSecundaria = Color(0xFFFF5757);
  static const Color corBotao = Color(0xFFB9B9B9);
  static const Color corTextoBotao = Color(0xFFFFFFFF);
  static const Color corIconeETextoSecundario = Color(0xFF838383);
  static const Color corContainer = Color(0xFFFFDDA8);
  static const Color corTextoPrincipal = Color(0xFF606060);

  Cores({required this.context});
  double get altura => MediaQuery.of(context).size.height;
  double get largura => MediaQuery.of(context).size.width;
}

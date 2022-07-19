import 'package:flutter/material.dart';
import 'package:plink/themes/models/cores.dart';

class TemaApp {
  ThemeData temaApp = ThemeData(
    elevatedButtonTheme: temaBotao,
    textTheme: temaTexto,
  );
}

ElevatedButtonThemeData temaBotao = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      primary: Cores.corBotao,
      textStyle: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      )),
);

TextTheme temaTexto = const TextTheme(
  headline4: TextStyle(
    fontWeight: FontWeight.bold,
  ),
  bodyText1: TextStyle(
    fontSize: 20,
    color: Cores.corBotaoApagadoBodyText1,
  ),
  headline5: TextStyle(
    fontWeight: FontWeight.w800,
  ),
  subtitle1: TextStyle(
    fontSize: 20,
    color: Cores.corIconeESubtitle1,
  ),
);

import 'package:flutter/material.dart';
import 'package:plink/themes/models/cores.dart';

class TemaApp {
  ThemeData temaApp = ThemeData(
    elevatedButtonTheme: temaBotao,
  );
}

ElevatedButtonThemeData temaBotao = ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Cores.corBotao),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
);

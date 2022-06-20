import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:plink/themes/models/cores.dart';

import 'screens/telaLogin/tela_login.dart';
import 'themes/models/temas.dart';

void main() => runApp(const Plink());

class Plink extends StatelessWidget {
  const Plink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(extensions: <ThemeExtension<dynamic>>[
        TemaCustom(
            cor: Cores.corSecundaria,
            decoration: const BoxDecoration(),
            buttonStyle: ElevatedButton.styleFrom(
              primary: Cores.corSecundaria,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            )),
      ]),
      home: const HomePlink(),
    );
  }
}

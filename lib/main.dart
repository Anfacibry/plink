import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:plink/themes/models/tema_app.dart';

import 'screens/telaLogin/tela_login.dart';

void main() => runApp(const Plink());

class Plink extends StatelessWidget {
  const Plink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TemaApp().temaApp,
      home: const HomePlink(),
    );
  }
}

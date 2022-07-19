import 'package:flutter/material.dart';
import 'package:plink/components/perfil_logo.dart';

import 'package:plink/screens/telaPrincipal/components/segunda_parte.dart';

import 'package:plink/themes/models/cores.dart';

class HomePlink extends StatefulWidget {
  const HomePlink({Key? key}) : super(key: key);

  @override
  State<HomePlink> createState() => _HomePlinkState();
}

class _HomePlinkState extends State<HomePlink> {
  @override
  Widget build(BuildContext context) {
    final double altura = Cores(context: context).altura;
    final double largura = Cores(context: context).largura;

    return Scaffold(
      backgroundColor: const Color(0xFFFEF9F9),
      body: SizedBox(
        height: altura,
        width: largura,
        child: Column(
          children: const [
            PerfilLogo(
              alturaMilt: .4,
            ),
            SegundaParte(
              alturaMult: .6,
            ),
          ],
        ),
      ),
    );
  }
}

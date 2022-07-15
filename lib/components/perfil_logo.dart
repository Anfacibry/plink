import 'package:flutter/material.dart';
import 'package:plink/components/custome_clipp.dart';
import 'package:plink/themes/models/cores.dart';

class PerfilLogo extends StatelessWidget {
  final double alturaMilt;
  const PerfilLogo({required this.alturaMilt, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double altura = Cores(context: context).altura;
    final double largura = Cores(context: context).largura;
    return ClipPath(
      clipper: MyCustomClipp(),
      child: SizedBox(
        height: altura * alturaMilt,
        width: largura,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/diversas/fundo_lanches.png",
              fit: BoxFit.cover,
            ),
            Image.asset("assets/images/diversas/plink.png"),
          ],
        ),
      ),
    );
  }
}

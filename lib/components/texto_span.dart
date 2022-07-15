import 'package:flutter/material.dart';
import 'package:plink/themes/models/cores.dart';

class TextoDestaque extends StatelessWidget {
  final TextStyle tamanhoTexto;
  final String primeiraFrase;
  final String segundaFase;
  final String? terceiraFase;
  const TextoDestaque({
    required this.tamanhoTexto,
    required this.primeiraFrase,
    required this.segundaFase,
    this.terceiraFase,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: tamanhoTexto,
        children: [
          TextSpan(
            text: primeiraFrase,
            style: const TextStyle(
              color: Cores.corIconeESubtitle1,
            ),
          ),
          TextSpan(
            text: segundaFase,
            style: const TextStyle(
              color: Cores.corBotao,
            ),
          ),
          TextSpan(
            text: terceiraFase,
            style: const TextStyle(
              color: Cores.corIconeESubtitle1,
            ),
          ),
        ],
      ),
    );
  }
}

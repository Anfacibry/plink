import 'package:flutter/material.dart';
import 'package:plink/themes/models/cores.dart';

class IconeInformacaoPassada extends StatelessWidget {
  final int numero;
  final int indice;
  const IconeInformacaoPassada({
    required this.numero,
    required this.indice,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: numero == indice ? 20 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: numero == indice ? Cores.corContainer : Cores.corBotao,
      ),
    );
  }
}

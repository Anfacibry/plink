import 'package:flutter/material.dart';

import '../themes/models/cores.dart';

class Botao extends StatefulWidget {
  final String tituloBotao;
  const Botao({required this.tituloBotao, Key? key}) : super(key: key);

  @override
  State<Botao> createState() => _BotaoState();
}

class _BotaoState extends State<Botao> {
  @override
  Widget build(BuildContext context) {
    final double largura = Cores(context: context).largura;
    return Container(
      height: 60,
      width: largura * .8,
      decoration: BoxDecoration(
          color: Cores.corCaixaTexto,
          boxShadow: const [
            BoxShadow(
              color: Cores.corBotaoApagadoBodyText1,
              offset: Offset(0, 5),
              blurRadius: 5,
              spreadRadius: 3,
              blurStyle: BlurStyle.normal,
            ),
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.tituloBotao,
            ),
          ),
        ),
      ),
    );
  }
}

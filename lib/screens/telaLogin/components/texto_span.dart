import 'package:flutter/material.dart';
import 'package:plink/themes/models/cores.dart';

class TextoDestaque extends StatelessWidget {
  const TextoDestaque({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: Theme.of(context).textTheme.headline4,
        children: const [
          TextSpan(
              text: "Aqui você encontra as melhores",
              style: TextStyle(
                color: Cores.corIconeESubtitle1,
              )),
          TextSpan(
              text: " Comidas",
              style: TextStyle(
                color: Cores.corBotao,
              )),
        ],
      ),
    );
  }
}

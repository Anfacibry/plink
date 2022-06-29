import 'package:flutter/material.dart';
import 'package:plink/screens/telaLogin/components/icone_informacao_passada.dart';
import 'package:plink/screens/telaLogin/models/informacoes_inicial.dart';

import 'package:plink/themes/models/cores.dart';

import '../../themes/models/temas.dart';
import 'components/custome_clipp.dart';

class HomePlink extends StatefulWidget {
  const HomePlink({Key? key}) : super(key: key);

  @override
  State<HomePlink> createState() => _HomePlinkState();
}

class _HomePlinkState extends State<HomePlink> {
  int _numero = 0;

  @override
  Widget build(BuildContext context) {
    final double altura = Cores(context: context).altura;
    final double largura = Cores(context: context).largura;
    final TemaCustom tema = Theme.of(context).extension<TemaCustom>()!;

    return Scaffold(
      backgroundColor: const Color(0xFFFEF9F9),
      body: SizedBox(
        height: altura,
        width: largura,
        child: Column(
          children: [
            ClipPath(
              clipper: MyCustomClipp(),
              child: SizedBox(
                height: altura * .4,
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
            ),
            SizedBox(
              height: altura * .6,
              width: largura,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Text(
                      "Aqui você encontra as melhores comidas",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                  SizedBox(
                      height: altura * .15,
                      width: largura * .9,
                      child: PageView.builder(
                        onPageChanged: (indice) {
                          setState(() {
                            _numero = indice;
                          });
                        },
                        itemCount: InformacoesInicias.informacoes.length,
                        itemBuilder: (buildContext, indice) => Center(
                          child: Text(
                            InformacoesInicias.informacoes[indice],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      )),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconeInformacaoPassada(numero: _numero, indice: 0),
                            const Padding(
                              padding: EdgeInsets.only(right: 5, left: 5),
                            ),
                            IconeInformacaoPassada(numero: _numero, indice: 1),
                            const Padding(
                              padding: EdgeInsets.only(right: 5, left: 5),
                            ),
                            IconeInformacaoPassada(numero: _numero, indice: 2),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: 250,
                        child: ElevatedButton(
                          onPressed: () {
                            debugPrint(_numero.toString());
                          },
                          style: tema.buttonStyle,
                          child: const Text(
                            "Entrar",
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

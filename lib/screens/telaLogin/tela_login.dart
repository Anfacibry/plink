import 'package:flutter/material.dart';
import 'package:plink/screens/telaLogin/components/icone_informacao_passada.dart';
import 'package:plink/screens/telaLogin/models/informacoes_inicial.dart';

import 'package:plink/themes/models/cores.dart';

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
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                              text: "Aqui você encontra as melhores",
                              style: TextStyle(
                                color: Cores.corIconeETextoSecundario,
                              )),
                          TextSpan(
                              text: " Comidas",
                              style: TextStyle(
                                color: Cores.corBotao,
                              )),
                        ],
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
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )),

                  ///
                  ///Scroll que faz o salto de informações
                  ///
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

                      ///
                      ///Parte do botão que irar fazer o cadastro do usuário
                      ///
                      SizedBox(
                        height: 40,
                        width: 250,
                        child: ElevatedButton(
                          onPressed: () {
                            debugPrint(_numero.toString());
                          },
                          child: const Text(
                            "Entrar",
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Criar conta",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                            color: Color.fromARGB(255, 57, 154, 235),
                          ),
                        ),
                      )
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

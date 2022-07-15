import 'package:flutter/material.dart';
import 'package:plink/screens/telaCadastro/tela_cadastro.dart';
import 'package:plink/screens/telaLogin/components/texto_span.dart';
import 'package:plink/themes/models/cores.dart';

import '../models/informacoes_inicial.dart';
import 'icone_informacao_passada.dart';

class SegundaParte extends StatefulWidget {
  const SegundaParte({Key? key}) : super(key: key);

  @override
  State<SegundaParte> createState() => _SegundaParteState();
}

class _SegundaParteState extends State<SegundaParte> {
  int _numero = 0;

  @override
  Widget build(BuildContext context) {
    final double altura = Cores(context: context).altura;
    final double largura = Cores(context: context).largura;
    return SizedBox(
      height: altura * .6,
      width: largura,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: TextoDestaque(),
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
                    style: Theme.of(context).textTheme.bodyText1,
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
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const TelaCadastro(),
                      ),
                    );
                  },
                  child: const Text(
                    "Entrar",
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
    );
  }
}

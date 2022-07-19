import 'package:flutter/material.dart';
import 'package:plink/screens/telaLogin/tela_login.dart';
import 'package:plink/components/texto_span.dart';
import 'package:plink/themes/models/cores.dart';

import '../models/informacoes_inicial.dart';
import 'icone_informacao_passada.dart';

class SegundaParte extends StatefulWidget {
  final double alturaMult;
  const SegundaParte({required this.alturaMult, Key? key}) : super(key: key);

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
      height: altura * widget.alturaMult,
      width: largura,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextoDestaque(
              tamanhoTexto: Theme.of(context).textTheme.headline4!,
              primeiraFrase: "Aqui você encontra as melhores",
              segundaFase: " Comidas",
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
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

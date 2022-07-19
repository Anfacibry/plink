import 'package:flutter/material.dart';
import 'package:plink/components/botao.dart';
import 'package:plink/components/perfil_logo.dart';
import 'package:plink/components/texto_span.dart';
import 'package:plink/themes/models/cores.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  @override
  Widget build(BuildContext context) {
    final double altura = Cores(context: context).altura;
    final double largura = Cores(context: context).largura;
    return Scaffold(
      body: SizedBox(
        height: altura,
        width: largura,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const PerfilLogo(
                alturaMilt: .35,
              ),
              SizedBox(
                height: altura * .65,
                child: LayoutBuilder(builder: (context, constraints) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 20,
                          right: 20,
                        ),
                        child: TextoDestaque(
                          tamanhoTexto: Theme.of(context).textTheme.headline5!,
                          primeiraFrase: "Faça seu login no ",
                          segundaFase: "Plink",
                          terceiraFase:
                              ", Utilizando seu email e senha escolhido "
                              "no momento de seu cadastro",
                        ),
                      ),
                      const Botao(tituloBotao: "Email"),
                      const Botao(tituloBotao: "Senha"),
                      Column(
                        children: [
                          Container(
                            height: 40,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Cores.corBotaoApagadoBodyText1,
                                  offset: Offset(0, 3),
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  blurStyle: BlurStyle.normal,
                                ),
                              ],
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "Login",
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text("Esqueci minha senha"),
                          )
                        ],
                      )
                    ],
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

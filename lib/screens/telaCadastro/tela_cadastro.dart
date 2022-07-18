import 'package:flutter/material.dart';
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
        child: Column(
          children: [
            const PerfilLogo(
              alturaMilt: .35,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
                bottom: 40,
              ),
              child: TextoDestaque(
                tamanhoTexto: Theme.of(context).textTheme.headline5!,
                primeiraFrase: "Faça seu login no ",
                segundaFase: "Plink",
                terceiraFase: ", Utilizando seu email e senha escolhido "
                    "no momento de seu cadastro",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 5,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Cores.corBotaoApagadoBodyText1,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                const CircleAvatar(
                  backgroundColor: Cores.corBotaoApagadoBodyText1,
                  radius: 10,
                ),
                Container(
                  height: 5,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Cores.corBotaoApagadoBodyText1,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Container(
              height: 40,
              width: largura * .8,
              decoration: BoxDecoration(
                  color: Cores.corCaixaTexto,
                  boxShadow: const [
                    BoxShadow(
                      color: Cores.corBotaoApagadoBodyText1,
                      offset: Offset(0, 5),
                      blurRadius: 19,
                      spreadRadius: 2,
                      blurStyle: BlurStyle.inner,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Container(
              height: 40,
              width: largura * .8,
              decoration: BoxDecoration(
                  color: Cores.corCaixaTexto,
                  boxShadow: const [
                    BoxShadow(
                      color: Cores.corBotaoApagadoBodyText1,
                      offset: Offset(0, 5),
                      blurRadius: 19,
                      spreadRadius: 2,
                      blurStyle: BlurStyle.inner,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
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
            ),
          ],
        ),
      ),
    );
  }
}

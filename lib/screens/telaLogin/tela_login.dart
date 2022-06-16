import 'package:flutter/material.dart';

import 'package:plink/themes/models/cores.dart';

import '../../themes/models/temas.dart';
import 'components/custome_clipp.dart';

class HomePlink extends StatelessWidget {
  const HomePlink({Key? key}) : super(key: key);

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
                  const Text(
                    """Sei jeito unico de pedir comida e poder ver 
                  as melhores delicias com os melhores preços""",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blue,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 5, left: 5),
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blue,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 5, left: 5),
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: 250,
                        child: ElevatedButton(
                          onPressed: () {},
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

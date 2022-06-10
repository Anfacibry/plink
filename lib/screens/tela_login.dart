import 'package:flutter/material.dart';

class HomePlink extends StatelessWidget {
  const HomePlink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double altura = MediaQuery.of(context).size.height;
    final double largura = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: altura,
          width: largura,
          child: Column(
            children: [
              SizedBox(
                height: altura * .5,
                width: largura,
                child: Image.asset(
                  "assets/images/diversas/fundo_lanches.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

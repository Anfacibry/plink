import 'package:flutter/material.dart';

import 'screens/tela_login.dart';

void main() => runApp(const Plink());

class Plink extends StatelessWidget {
  const Plink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePlink(),
    );
  }
}

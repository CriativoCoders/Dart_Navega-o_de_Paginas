import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplo Tela 2"),
        backgroundColor: const Color.fromARGB(255, 218, 109, 208),
      ),
      body: const Center(
        child: Text("Conteúdo da Tela 2"),
      ),
    );
  }
}

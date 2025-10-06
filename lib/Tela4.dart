import 'package:flutter/material.dart';

class Tela4 extends StatelessWidget {
  const Tela4({super.key});

  // lista de passos do projeto
  final List<Map<String, String>> passos = const [
    {
      "titulo": "Passo 1: Montagem da base",
      "descricao": "Aqui você monta a base do robô com as estruturas de suporte.",
      "imagem": "assets/images/robo1.png",
    },
    {
      "titulo": "Passo 2: Instalação dos motores",
      "descricao": "Conecte os motores elétricos na base montada.",
      "imagem": "assets/images/robo2.png",
    },
    {
      "titulo": "Passo 3: Conexão do Arduino",
      "descricao": "Posicione o Arduino e conecte os fios aos motores.",
      "imagem": "assets/images/robo3.png",
    },
    {
      "titulo": "Passo 4: Programação inicial",
      "descricao": "Carregue o código básico para controlar os motores.",
      "imagem": "assets/images/robo4.png",
    },
    {
      "titulo": "Passo 5: Teste dos motores",
      "descricao": "Verifique se os motores respondem ao controle do Arduino.",
      "imagem": "assets/images/robo5.png",
    },
    {
      "titulo": "Passo 6: Montagem dos sensores",
      "descricao": "Adicione sensores para melhorar a navegação do robô.",
      "imagem": "assets/images/robo6.png",
    },
    {
      "titulo": "Passo 7: Integração dos sensores",
      "descricao": "Conecte os sensores ao Arduino e teste suas leituras.",
      "imagem": "assets/images/robo7.png",
    },
    {
      "titulo": "Passo 8: Programação avançada",
      "descricao": "Implemente funcionalidades avançadas no código.",
      "imagem": "assets/images/robo8.png",
    },
    {
      "titulo": "Passo 9: Teste final",
      "descricao": "Realize o teste completo do robô em diferentes condições.",
      "imagem": "assets/images/robo9.png",
    },
    {
      "titulo": "Passo 10: Finalização",
      "descricao": "Ajuste e finalize todos os componentes para o uso final.",
      "imagem": "assets/images/robo10.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Projetos Pessoais"),
        backgroundColor: const Color.fromARGB(255, 218, 109, 208),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: passos.length,
        itemBuilder: (context, index) {
          final passo = passos[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    passo["titulo"]!,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 218, 109, 208),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      passo["imagem"]!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 180,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    passo["descricao"]!,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

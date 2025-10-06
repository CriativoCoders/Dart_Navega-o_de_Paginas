import 'package:flutter/material.dart';

class Tela4 extends StatelessWidget {
  const Tela4({super.key});

  // Lista de projetos
  final List<Map<String, String>> passos = const [
    {
      "titulo": "Robo Arduino",
      "descricao": "Robo Arduino com sensor de obstáculo.",
      "imagem": "assets/images/robo.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Projetos Pessoais"),
        backgroundColor: const Color.fromARGB(255, 218, 109, 208),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Card do projeto
          ...passos.map((passo) => Card(
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
                          height: 300,
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
              )),

          // Card do Quiz separado
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Quiz sobre tecnologia:',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  QuizGame(), // Quiz separado do projeto
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ===================== QuizGame ======================

class QuizGame extends StatefulWidget {
  const QuizGame({super.key});

  @override
  _QuizGameState createState() => _QuizGameState();
}

class _QuizGameState extends State<QuizGame> {
  int currentQuestion = 0;
  int score = 0;

  final List<Map<String, Object>> questions = [
    {
      'question': 'Qual a capital do Brasil?',
      'answers': ['São Paulo', 'Rio de Janeiro', 'Brasília', 'Belo Horizonte'],
      'correct': 2,
    },
    {
      'question': 'Flutter é feito com qual linguagem?',
      'answers': ['Java', 'Dart', 'Python', 'Kotlin'],
      'correct': 1,
    },
    {
      'question': 'Qual resultado de 10 + 5?',
      'answers': ['10', '15', '20', '25'],
      'correct': 1,
    },
    {
      'question': 'qual resultado de 10 * 5?',
      'answers': ['10', '15', '20', '25'],
      'correct': 3,
    },
  ];

  void checkAnswer(int selectedIndex) {
    if (selectedIndex == questions[currentQuestion]['correct']) {
      score++;
    }

    setState(() {
      currentQuestion++;
    });
  }

  void restartQuiz() {
    setState(() {
      score = 0;
      currentQuestion = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currentQuestion >= questions.length) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Você acertou $score de ${questions.length} perguntas!',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: restartQuiz,
            child: const Text('Reiniciar Quiz'),
          ),
        ],
      );
    }

    final question = questions[currentQuestion];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          question['question'] as String,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ...(question['answers'] as List<String>).asMap().entries.map((entry) {
          int idx = entry.key;
          String text = entry.value;
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: ElevatedButton(
              onPressed: () => checkAnswer(idx),
              child: Text(text),
            ),
          );
        }).toList(),
      ],
    );
  }
}

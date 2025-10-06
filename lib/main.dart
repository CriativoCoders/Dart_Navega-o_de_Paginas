import 'package:flutter/material.dart';

// Suas telas importadas (coloque seus arquivos reais)
import 'Tela2.dart';
import 'Tela3.dart';
import 'Tela4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfólio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFDA6DD0),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFDA6DD0),
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      home: const HomeWithTabs(),
    );
  }
}

class HomeWithTabs extends StatelessWidget {
  const HomeWithTabs({super.key});
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Quantidade de abas
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Meu Portfólio'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Início'),
              Tab(icon: Icon(Icons.code), text: 'Tecnologias'),
              Tab(icon: Icon(Icons.person), text: 'Sobre'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Tela4(),
            Tela2(),
            Tela3(),
          ],
        ),
      ),
    );
  }
}

// ---------------------- Tela4----------------------

class Tela4 extends StatelessWidget {
  const Tela4({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  "assets/images/talita.jpg",
                  width: 220,
                  height: 160,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Talita Cristina Alves Lobato",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              const Text(
                "Sou estudante de Desenvolvimento de Sistemas e jovem aprendiz na Bosch. Gosto de transformar desafios em projetos reais.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 36,
                    icon: const Icon(Icons.camera_alt, color: Color(0xFFDA6DD0)),
                    onPressed: () {
                      // Link para Instagram
                    },
                  ),
                  const SizedBox(width: 24),
                  IconButton(
                    iconSize: 36,
                    icon: const Icon(Icons.mail, color: Colors.redAccent),
                    onPressed: () {
                      // Link para Email
                    },
                  ),
                ],
              ),
              const SizedBox(height: 40),

              Image.asset(
                "assets/images/hero.png", // coloque aqui o caminho correto da sua imagem decorativa
                height: 200,
                fit: BoxFit.contain,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

// ---------------------- Tela2 ----------------------
// Coloque aqui sua implementação da Tela2 (Tecnologias) ou importe ela

// ---------------------- Tela3 ----------------------
// Coloque aqui sua implementação da Tela3 (Sobre mim) ou importe ela

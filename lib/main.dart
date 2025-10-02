import 'package:flutter/material.dart';
import 'package:flutter_application_1/Tela2.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

// Classe principal que inicializa o app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { // tudo isso aqui e para estilizar o app, e deixar ele mais bonito
    return MaterialApp(
      title: 'Portfólio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 218, 109, 208),
        textTheme: GoogleFonts.oswaldTextTheme(),
        appBarTheme: const AppBarTheme( // estulizar o appbar
          backgroundColor: Color.fromARGB(255, 218, 109, 208), // cor de fundo do appbar
          centerTitle: true,
          toolbarHeight: 200,
          titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 218, 109, 208),
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(16),
          ),
        ),
      ),
      home: const TelaAssets(),
    );
  }
}
 

// tela principal do app
class TelaAssets extends StatelessWidget {
  const TelaAssets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bem vindo ao meu Portfólio"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/talita.jpg",
                width: 200,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Imagem da internet e do projeto",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            const Text(
              "Esse é o texto exemplo com biblioteca Google Fonts",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Tela2()),
                );
              },
              child: const Icon(Icons.play_arrow, size: 32),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Tela2.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

//criar uma classe inicializadora que vai chamar a tela principal
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TelaAssets());
  }
}

class TelaAssets extends StatelessWidget {
  const TelaAssets({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.oswaldTextTheme()),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tela Assets,Bem vindo!✔😍"),
          centerTitle: true,
          backgroundColor: Colors.teal,
          toolbarHeight: 200,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://images.unsplash.com/photo-1758825175271-168064c2004c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw3fHx8ZW58MHx8fHx8",
                width: 200,
                height: 150,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              Image.asset(
                "assets/images/img.jpg",
                width: 200,
                height: 150,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              const Text(
                "Imagem da internet e do projeto",
                style: TextStyle(fontFamily: "Oswald", fontSize: 18),
              ),
              const SizedBox(height: 10),
              const Text(
                "Esse é o texto exemplo com biblioteca Google Fonts",
                style: TextStyle(fontSize: 16),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tela2()),
                  );
                },
                child: Icon(Icons.play_arrow),
              ), // botão de exemplo
            ],
          ),
        ),
      ),
    );
  }
}

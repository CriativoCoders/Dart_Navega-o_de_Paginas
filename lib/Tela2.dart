import 'package:flutter/material.dart';
import 'Tela3.dart'; // 

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tecnologias que conheço"),
        backgroundColor: const Color.fromARGB(255, 218, 109, 208),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TechCategoryCard(
              title: "Front-end",
              imagePaths: [
                "assets/images/html.png",
                "assets/images/css.png",
                "assets/images/javascript.png",
                "assets/images/react.png",
                "assets/images/angular.png",
                "assets/images/sass.png",
                "assets/images/type.png",
              ],
            ),
            const SizedBox(height: 16),
            const TechCategoryCard(
              title: "Back-end",
              imagePaths: [
                "assets/images/dart.png",
                "assets/images/node.png",
                "assets/images/python.png",
                "assets/images/java.png",
                "assets/images/c#.png",
                "assets/images/django.png",
                "assets/images/sqlite.png",
                "assets/images/postgre.png",
              ],
            ),
            const SizedBox(height: 16),
            const TechCategoryCard(
              title: "Mobile",
              imagePaths: [
                "assets/images/flutter.png",
                "assets/images/dart.png",
              ],
            ),
            const SizedBox(height: 16),
            const TechCategoryCard(
              title: "Design",
              imagePaths: [
                "assets/images/figma.png",
              ],
            ),

            const SizedBox(height: 24),

            // 🔘 BOTÃO PARA TELA 3
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Tela3()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 218, 109, 208),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              icon: const Icon(Icons.arrow_forward),
              label: const Text(
                "Explore mais sobre min",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ==== CARD DE CATEGORIA ====
class TechCategoryCard extends StatelessWidget {
  final String title;
  final List<String> imagePaths;

  const TechCategoryCard({
    required this.title,
    required this.imagePaths,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 218, 109, 208),
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: imagePaths.map((path) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(path),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _getTechNameFromPath(path),
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  // Nome formatado da imagem
  static String _getTechNameFromPath(String path) {
    final name = path.split('/').last.split('.').first;
    return name[0].toUpperCase() + name.substring(1);
  }
}

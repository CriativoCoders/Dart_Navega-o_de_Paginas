# Guia Prático: Criar Projeto Dart/Flutter e Entender Cada Parte

---

## 1. Instalar o Dart SDK e Flutter

- Acesse [Dart SDK](https://dart.dev/get-dart) para instalar Dart.
- Para Flutter (que já vem com Dart), acesse [Flutter](https://flutter.dev/docs/get-started/install).

---

## 2. Criar projeto Flutter

No terminal, rode:

```bash
flutter create nome_do_projeto
```

Entre na pasta do projeto:

### 3. Estrutura básica do projeto

- lib/main.dart: arquivo principal onde ficará o código do app.

- pubspec.yaml: arquivo para gerenciar dependências e assets.

- assets/images/: pasta onde você pode adicionar imagens locais para usar no app.

### 4. Configurar assets no pubspec.yaml

Para usar imagens locais, você precisa registrar elas no pubspec.yaml. Exemplo:

```bash
flutter:
  assets:
    - assets/images/img.jpg

```

Ou para incluir toda a pasta de imagens:

```bash
flutter:
  assets:
    - assets/images/
```

Não se esqueça de executar flutter pub get após alterar o arquivo.

### 5. Criar o widget principal (main.dart)

```dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.oswaldTextTheme(),
      ),
      home: const TelaAssets(),
    );
  }
}

class TelaAssets extends StatelessWidget {
  const TelaAssets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela Assets, Bem-vindo! ✔😍"),
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
              "https://images.unsplash.com/photo-1758825175271-168064c2004c?w=500&auto=format&fit=crop&q=60",
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
                  MaterialPageRoute(builder: (context) => const Tela2()),
                );
              },
              child: const Icon(Icons.play_arrow),
            ),
          ],
        ),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Exemplo Tela 2")),
      body: const Center(
        child: Text("Você está na Tela 2"),
      ),
    );
  }
}

```

### 6. Explicações importantes


- runApp(const MyApp()): inicia o app chamando o widget principal.

- MaterialApp: configura tema, rotas e layout geral.

- Scaffold: estrutura base de uma tela (app bar, corpo, etc).

- Imagens:

- Image.network(): carrega imagens da internet.

- Image.asset(): carrega imagens locais (do projeto).

- Google Fonts: permite usar fontes personalizadas facilmente.

- Navegação:

- Navigator.push() abre outra tela.

- Cada tela deve ser um widget com Scaffold.


### 7. Rodar o projeto

```bash
flutter run

```

### 8. Dicas e erros comuns

- Não coloque dois MaterialApp no projeto — deve existir somente um no topo.

- Sempre registre suas imagens no pubspec.yaml.

- Use const sempre que possível para melhorar desempenho.

- Para navegação, crie telas como widgets separados que retornam Scaffold.




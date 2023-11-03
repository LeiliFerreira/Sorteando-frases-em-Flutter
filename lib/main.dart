import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(SorteioDeFrasesApp());
}

class SorteioDeFrasesApp extends StatefulWidget {
  @override
  _SorteioDeFrasesAppState createState() => _SorteioDeFrasesAppState();
}

class _SorteioDeFrasesAppState extends State<SorteioDeFrasesApp> {
  final List<String> frases = [
    "Formata meu PC?",
    "Sabe hackear Facebook?",
    "Meu amigo faz mais barato",
    "Conserta a impressora?",
    "Conserta o ar condicionado?",
    "Conserta a TV?",
  ];

  String fraseSorteada = "...";

  void sortearFrase() {
    final random = Random();
    final index = random.nextInt(frases.length);
    setState(() {
      fraseSorteada = frases[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Frases que todo programador',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'já ouviu',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Image(image: AssetImage('images/programador.png')),
              ElevatedButton(
                onPressed: () {
                  sortearFrase();
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF333333), // Define a cor do botão
                ),
                child: Text('APERTE'),
              ),
              SizedBox(height: 20),
              Text(
                fraseSorteada,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

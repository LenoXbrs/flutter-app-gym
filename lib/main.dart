import 'package:flutter/material.dart';
import 'package:teste/telas/autenticacao_tela.dart';
import 'package:teste/telas/exercicio_tela.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
 
      home: AutenticacaoTela(),
    );
  }
}



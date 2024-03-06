import 'package:flutter/material.dart';
import 'package:teste/_comum/minhas_cores.dart';

class AutenticacaoTela extends StatelessWidget {
  const AutenticacaoTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(gradient: LinearGradient(colors: [MinhasCores.azullTopoGradiente,MinhasCores.azulBaixoGradiente], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
              Image.asset("assets/logo.png", height: 128,),
              Text(
                "GymApp",
              textAlign: TextAlign.center 
              , style: TextStyle(fontSize: 48,
              fontWeight: FontWeight.bold,color: Colors.white )
              ,)
            ],
          ),
        ],
      ),
    );
  }
}
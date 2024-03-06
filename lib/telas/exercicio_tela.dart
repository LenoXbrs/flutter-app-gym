

import 'package:flutter/material.dart';
import 'package:teste/_comum/minhas_cores.dart';
import 'package:teste/modelos/exercicio_modelo.dart';
import 'package:teste/modelos/sentimento_modelo.dart';

class ExercicioTela extends StatelessWidget {
   ExercicioTela({super.key});

  final ExercicioModelo exercicioModelo = ExercicioModelo(id: "ex1", nome: "Remada neutra" ,treino: "Treino A", comoFazer: "Só segurar e puxar");
  final List<SentimentoModelo> listaSentimentos = [
    SentimentoModelo(id: 'se1', sentido: "to forte hoje", data: "2024/03/05"),
        SentimentoModelo(id: 'se2', sentido: "to bem hoje", data: "2024/03/06")

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Column(
      children: [
        Text(exercicioModelo.nome, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),),
        Text(exercicioModelo.treino, style:const TextStyle(fontSize: 17, color: Colors.white),),
      ],
    
      ),

      backgroundColor: MinhasCores.azulEscuro,
      
      centerTitle: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=>{
        print('Foi clicado')
      }, 
      child: const Icon(Icons.add),
      ),

      body: Container(
        padding: const EdgeInsets.all(16.0),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){}, child: const Text("Enviar foto"
                  )
                  ),
                  ElevatedButton(onPressed: (){}, child: const Text("Tirar foto"
                  )
                  ),
                ],
              )
              ),

            SizedBox(height: 8),

            const Text("como fazer ?",
            
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
        SizedBox(height: 8),
             Text("${exercicioModelo.comoFazer}"),
        
          const  Padding(
              padding:  EdgeInsets.all(8.0),
              child: Divider(color: Colors.black),
            ),
        
             const Text("como estou me sentindo ?",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
        SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(listaSentimentos.length
                , (index) {
                  SentimentoModelo sentimentoAgora = listaSentimentos[index];
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(sentimentoAgora.sentido),
                     subtitle: Text(sentimentoAgora.data),
                     leading: const Icon(Icons.double_arrow),
                     trailing: IconButton(
                      icon: const Icon(Icons.delete),
                       color: Colors.red,
                       onPressed: (){
                        print("DELETANDO ${sentimentoAgora.sentido}");
                       },
                        ),
                        
                     );
                }),
              )

              // ...listaSentimentos.map((e) => Text((listaSentimentos.iterator.current.sentido.toString())))
          ],
        ),
      ),
    );

    
  }
}
import 'package:flutter/material.dart';
import 'package:section_mai/answer.dart';
import 'package:section_mai/question.dart';

class Niveau1Quiz extends StatefulWidget {
  @override
  State<Niveau1Quiz> createState() => _Niveau1QuizState();
}

class _Niveau1QuizState extends State<Niveau1Quiz> {
  // const Niveau1Quiz({super.key});
   var _questionIndex = 0;

  void _answerQuestion(){
    setState(() {
       _questionIndex = _questionIndex + 1;
    });
   
   
  }

  @override
  Widget build(BuildContext context) {
     var mesquestions = [
      {
        'questionText': 'Quelle est ta couleur préférée ?',
        'Reponse': ["Rouge", "Bleu", "vert", "Rose"]
      },
      {
        'questionText': 'Quel est ton animal préféré ?',
        'Reponse': ["Elephant", "Chat", "Caiman", "Chien"]
      },
      {
        'questionText': 'Quelle est ton plat favoris ?',
        'Reponse': ["Alloco", "Placali", "", ""]
      }
     ];
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 30, 29, 29),
        appBar: AppBar(
          title: Text('Niveau 1'),
        ),
        body: Column(
          children: [
            Question(
              mesquestions[_questionIndex]['questionText'],
            ),
           Reponse(_answerQuestion),
           Reponse(_answerQuestion),
           Reponse(_answerQuestion),
           
          ],

        ),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                ListTile(
                  leading: const Icon(Icons.games_outlined, size: 30,),
                  title: const Text('Niveau 1', style: TextStyle(fontSize: 20),),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Niveau1Quiz()));
                  },
                ),
                const Divider(),
                 ListTile(
                  leading: const Icon(Icons.games_outlined, size: 30,),
                  title: const Text('Niveau 2', style: TextStyle(fontSize: 20),),
                  onTap: (){},
                ),
                Divider(),
                 ListTile(
                  leading: const Icon(Icons.games_outlined, size: 30,),
                  title: const Text('Niveau 3', style: TextStyle(fontSize: 20),),
                  onTap: (){},
                ),
                    
              ],
            ),
          ),

        ),
      )
      );
 }
}
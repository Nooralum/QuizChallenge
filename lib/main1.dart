import 'package:flutter/material.dart';
import 'package:section_mai/niveau1.dart';

class MonMain extends StatefulWidget {
  const MonMain({super.key});

  @override
  State<MonMain> createState() => _MonMainState();
}

class _MonMainState extends State<MonMain> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Center(child: Text('Mon application de quiz')),  
        ),
        // drawer: Drawer(
        //   child: ListView(
        //     children: [
        //       ListTile(
        //         leading: const Icon(Icons.games_outlined, size: 30,),
        //         title: const Text('Niveau 1', style: TextStyle(fontSize: 20),),
        //         onTap: () {
        //           Navigator.of(context).push(MaterialPageRoute(builder: (context) => Niveau1Quiz()));
        //         },
        //       ),
        //       const Divider(),
        //        ListTile(
        //         leading: const Icon(Icons.games_outlined, size: 30,),
        //         title: const Text('Niveau 2', style: TextStyle(fontSize: 20),),
        //         onTap: (){},
        //       ),
        //        ListTile(
        //         leading: const Icon(Icons.games_outlined, size: 30,),
        //         title: const Text('Niveau 3', style: TextStyle(fontSize: 20),),
        //         onTap: (){},
        //       ),

        //     ],
        //   ),

        // ),

        body: Center(
          child: Center(
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Niveau1Quiz()));
              }, 
              child: const Text('Commencer le quiz'),
              ),
          ),
        ),
       

      );
  }
}
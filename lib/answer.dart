import 'package:flutter/material.dart';

class Reponse extends StatelessWidget {
  final Function selectHandler;

  Reponse(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal
              ),
              onPressed: selectHandler(), 
              child: Text(
                "Reponse 1",
              ),
              ),
    );
  }
}
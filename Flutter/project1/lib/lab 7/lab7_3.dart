import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lab7_3 extends StatelessWidget {
  Lab7_3({super.key});

  TextEditingController txt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lab7_3'),
      ),
      body: Column(
        children: [
          TextField(
            controller: txt,
          ),
          ElevatedButton(onPressed: ()=>print(txt.text), child: Text('Submit'))
        ],
      )
    );
  }
}

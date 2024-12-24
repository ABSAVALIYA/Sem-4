import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lab7_5 extends StatefulWidget {
  const Lab7_5({super.key});

  @override
  State<Lab7_5> createState() => _Lab7_5State();
}

class _Lab7_5State extends State<Lab7_5> {

  TextEditingController txt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lab7_5'),
      ),
      body: Column(
        children: [
          TextField(
            controller: txt,
          ),
          ElevatedButton(onPressed: (){
            setState(() {

            });
          }, child: Text('Submit')),
          Text(txt.text),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lab7_4 extends StatefulWidget {
  const Lab7_4({super.key});

  @override
  State<Lab7_4> createState() => _Lab7_4State();
}

class _Lab7_4State extends State<Lab7_4> {

  TextEditingController txt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lab7_4'),
      ),
      body: Column(
        children: [
          TextField(
            controller: txt,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Address',
              hintText: 'Write Something'
            ),
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

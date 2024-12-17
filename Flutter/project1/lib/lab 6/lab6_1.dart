import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout1 extends StatelessWidget {
  const Layout1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Lab6_2'
        ),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              )
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.yellow,
                ),
              )
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.green,
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}

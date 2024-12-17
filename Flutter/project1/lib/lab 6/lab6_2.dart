import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout2 extends StatelessWidget {
  const Layout2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Lab6_2'
        ),
      ),
      body: Row(
        children: [
          Expanded(child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              )
            ],
          )),
          Expanded(child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.yellow,
                ),
              )
            ],
          )),
          Expanded(child: Column(
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout5 extends StatelessWidget {
  const Layout5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Extra'
        ),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.cyanAccent,
                ),
              )
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.cyan,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(child: Container(
                      color: Colors.yellow,
                    )),
                    Expanded(child: Container(
                      color: Colors.purple,
                    ))
                  ],
                ),
              ),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.pink,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout4 extends StatelessWidget {
  const Layout4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Lab6_3_1'
        ),
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.grey,
                )),
                Expanded(child: Container(
                  color: Colors.orange,
                )),
                Expanded(child: Container(
                  color: Colors.blue,
                ))
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(flex: 3, child: Container(
                  color: Colors.brown,
                )),
                Expanded(flex: 2, child: Container(
                  color: Colors.green,
                )),
                Expanded(child: Container(
                  color: Colors.white,
                ))
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(child: Container(
                  color: Colors.red,
                )),
                Expanded(flex: 3, child: Container(
                  color: Colors.yellow,
                )),
                Expanded(flex: 2, child: Container(
                  color: Colors.purple,
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

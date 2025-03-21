import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout3 extends StatelessWidget {
  const Layout3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lab6_3_1'
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(
                  color: Colors.red,
                )),
                Expanded(child: Container(
                  color: Colors.green,
                )),
                Expanded(child: Container(
                  color: Colors.blue,
                ))
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(
                  color: Colors.brown,
                )),
                Expanded(child: Container(
                  color: Colors.grey,
                )),
                Expanded(child: Container(
                  color: Colors.purple,
                ))
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(
                  color: Colors.black,
                )),
                Expanded(child: Container(
                  color: Colors.pink,
                )),
                Expanded(child: Container(
                  color: Colors.orange,
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

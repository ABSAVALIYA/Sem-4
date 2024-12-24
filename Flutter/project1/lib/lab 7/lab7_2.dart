import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lab7_2 extends StatelessWidget {
  const Lab7_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: customText(name: 'Hello World', clr: Colors.red, fz: 30),
    );
  }

  Widget customText({required String name, required Color clr, required double fz}) {
    return Text(name, style:
      TextStyle(
        color: clr,
        fontSize: fz,
      ),);
  }
}

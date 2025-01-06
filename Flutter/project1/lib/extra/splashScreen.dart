import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project1/extra/birthdayCard2.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Birthdaycard2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network("https://tse4.mm.bing.net/th?id=OIP.iD0JlytkFre-FzGAv4HxAQHaHa&pid=Api&P=0&h=180"),
      ),
    );
  }
}

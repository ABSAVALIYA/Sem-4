import 'package:flutter/material.dart';

class Birthdayscreen extends StatelessWidget {
  var name;

  Birthdayscreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.fVVOdKZIs5p3MLbKauFs4gHaFS&pid=Api&P=0&h=180"), fit: BoxFit.fill)
                  ),
                ),
                Positioned(
                  top: 600,
                  left: 150,
                  child: Text(name,
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            child: Center(
              child: ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Back')),
            ),
          ),
        ],
      ),
    );
  }
}

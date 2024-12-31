import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BirthdayCard extends StatefulWidget {
  BirthdayCard({super.key});

  @override
  State<BirthdayCard> createState() => _BirthdayCardState();
}

class _BirthdayCardState extends State<BirthdayCard> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController nameController = TextEditingController();
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Birthday Card'),
      ),
      body:flag==true ? Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: 'Enter Name',
                ),
              ),
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                if(nameController.text.isNotEmpty) {
                 flag = false;
                }});
            }, child: const Text('Submit')),
          ],
        ),
      ) : Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.fVVOdKZIs5p3MLbKauFs4gHaFS&pid=Api&P=0&h=180"), fit: BoxFit.fill)
              ),
            ),
            Positioned(
                top: 600,
                left: 150,
                child: Text(nameController.text,
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
            ),
          ],
        ),
    );
  }
}

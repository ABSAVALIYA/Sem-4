import 'package:flutter/material.dart';

import 'BirthdayScreen.dart';
class Birthdaycard2 extends StatelessWidget {
  Birthdaycard2({super.key});

  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Birthday Card"),
      ),
      body: Form(
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter name';
                  }
                  return null;
                },
              ),
            ),
            ElevatedButton(onPressed: () {
              if(_formKey.currentState!.validate()) {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Birthdayscreen(name: nameController.text)));
              }
            }, child: const Text('Submit')),
          ],
        ),
      ),
    );
  }
}

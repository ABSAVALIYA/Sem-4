import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Form1 extends StatelessWidget {
  Form1({super.key});

  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter email';
                  }
                  else if(!RegExp(r'^[a-z0-9]{1,}@gmail.com$').hasMatch(value)) {
                    return 'Please enter valid email';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                controller: phoneController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  hintText: 'Enter Phone Number',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter phone number';
                  }
                  else if(!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                    return 'Please enter valid phone number';
                  }
                  return null;
                },
              ),
            ),
            ElevatedButton(onPressed: () {
              if(_formKey.currentState!.validate()) {
                print('Email : ${emailController.text}\nPhone Number: ${phoneController.text}');
              }
            }, child: const Text('Submit')),
          ],
        ),
      ),
    );
  }
}

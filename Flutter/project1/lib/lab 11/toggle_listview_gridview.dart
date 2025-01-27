import 'package:flutter/material.dart';

class ToggleListviewGridview extends StatefulWidget {
  const ToggleListviewGridview({super.key});

  @override
  State<ToggleListviewGridview> createState() => _ToggleListviewGridviewState();
}

class _ToggleListviewGridviewState extends State<ToggleListviewGridview> {
  bool isList = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View And Grid View'),
        actions: [
          Switch(value: isList, onChanged: (value) {
            setState(() {
              isList = value!;
            });
          },)
        ],
      ),
      body: isList?
      Padding(padding: EdgeInsets.all(16),
        child: Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.blue,
                  ),
                );
              },),
        ),
      )
          :Padding(padding: EdgeInsets.all(16),
          child: Expanded(child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Padding(padding: EdgeInsets.all(8),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                );
              },)),
      ),
    );
  }
}

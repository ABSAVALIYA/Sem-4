import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormatPage extends StatelessWidget {
  const DateFormatPage({super.key});

  @override
  Widget build(BuildContext context) {
    var date = DateTime.now();
    var formated1 = DateFormat('dd/mm/yy').format(date);
    var formated2 = DateFormat('yy/mm/dd').format(date);
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Format'),
      ),
      body: Padding(padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(date.toString()),
          Text(formated1),
          Text(formated2),
        ],
      ),
      ),
    );
  }
}

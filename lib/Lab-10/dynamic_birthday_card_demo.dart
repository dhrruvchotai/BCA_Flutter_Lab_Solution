import 'package:flutter/material.dart';

import 'birthday_card_dynamic.dart';


class DynamicBirthdayCardDemo extends StatelessWidget {
  const DynamicBirthdayCardDemo({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController name = TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your name',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
              controller: name,
            ),
          ),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DynamicBdayCard(name: name.text),));
          }, child: Text('Make a card'))
        ],
      ),
    );
  }
}

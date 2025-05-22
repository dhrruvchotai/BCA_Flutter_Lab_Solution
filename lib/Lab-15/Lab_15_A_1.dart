import 'package:flutter/material.dart';

class ListviewExample extends StatelessWidget {
  final List<int> numbers = List.generate(10, (index) => index + 1); // Numbers 1 to 10

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Simple Number List')),
        body: ListView(
          children: numbers.map((number) {
            return ListTile(
              title: Text('Number $number'),
              tileColor: Colors.blue,
            );
          }).toList(),
        ),
      ),
    );
  }
}

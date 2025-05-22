import 'package:flutter/material.dart';

class ListviewBuilderExample extends StatelessWidget {
  final List<int> numbers = List.generate(20, (index) => index + 1); // Numbers 1 to 20

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Number List')),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.format_list_numbered),
              title: Text('Number ${numbers[index]}'),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Temp1 extends StatelessWidget {
  const Temp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Temp'),),
      body: SafeArea(child: Text('Hello!!!!!!!!',style: TextStyle(fontSize: 24),)),
    );
  }
}

import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  const AlertDialogDemo({super.key});

  @override
  State<AlertDialogDemo> createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert Dialog'),),
      body: Center(
        child: ElevatedButton(onPressed: () {
          showDialog(context: context, builder: (context) {
            return AlertDialog(
              title: Text('Are you sure!!!'),
              icon: Icon(Icons.e_mobiledata),
              actions: [
                ElevatedButton(onPressed: () {
                  Navigator.of(context).pop();
                  print(1);
                }, child: Text('Ok'))
              ],
            );
          },);
        }, child: Text('Show Dialog')),
      ),
    );
  }
}

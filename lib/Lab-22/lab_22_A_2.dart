import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogWithCupertino extends StatefulWidget {
  const AlertDialogWithCupertino({super.key});

  @override
  State<AlertDialogWithCupertino> createState() => _AlertDialogWithCupertinoState();
}

class _AlertDialogWithCupertinoState extends State<AlertDialogWithCupertino> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cupertino Alert'),),
      body: Center(
        child: ElevatedButton(onPressed: () {
          showCupertinoDialog(context: context, builder: (context) {
            return CupertinoAlertDialog(
              title: Text('Are you sure!!!'),
              actions: [
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel'),
                ),
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  isDestructiveAction: true,
                  child: const Text('Delete'),
                ),
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  isDefaultAction: true,
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
    }, child: Text('Show Dialog')),
    ),
    );
  }
}

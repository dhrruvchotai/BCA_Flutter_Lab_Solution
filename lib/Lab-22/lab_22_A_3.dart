import 'package:flutter/material.dart';

class ShowDatePickerDemo extends StatefulWidget {
  const ShowDatePickerDemo({super.key});

  @override
  State<ShowDatePickerDemo> createState() => _ShowDatePickerDemoState();
}

class _ShowDatePickerDemoState extends State<ShowDatePickerDemo> {

  DateTime? date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DatePicker'),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () async{
              date = await showDatePicker(
                context: context,
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                initialDate: DateTime(2000),
              );
              setState(() {});
            }, child: Text('Select Date')),
            Text(date.toString()),
          ],
        ),
      ),
    );
  }
}

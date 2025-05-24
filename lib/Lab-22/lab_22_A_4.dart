import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FetchJsonFromAsset extends StatefulWidget {
  const FetchJsonFromAsset({super.key});

  @override
  State<FetchJsonFromAsset> createState() => _FetchJsonFromAssetState();
}

class _FetchJsonFromAssetState extends State<FetchJsonFromAsset> {

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  List users = [];

  Future<void> loadJsonData() async{
    final String jsonString = await rootBundle.loadString('assets/json_files/data.json');
    final jsonData = jsonDecode(jsonString);
    print(jsonData);
    setState(() {
      users = jsonData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Json Data"),),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(users[index]['name']),
          subtitle: Text(users[index]['number'].toString()),
        ),
      )
    );
  }
}

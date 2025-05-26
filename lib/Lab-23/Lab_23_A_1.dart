import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

class HttpClientRequest extends StatefulWidget {
  const HttpClientRequest({super.key});

  @override
  State<HttpClientRequest> createState() => _HttpClientRequestState();
}

class _HttpClientRequestState extends State<HttpClientRequest> {

  List<Map<String,dynamic>> users = [];

  Future<List<Map<String,dynamic>>> fetchData() async{

    //HttpClint is inbuilt flutter component to make http requests rather then adding third party package like 'http'
    var client = HttpClient();

    //this is not making any request in your uri this just make an instance of request
    final request  = await client.getUrl(Uri.parse('https://6673d5f375872d0e0a93e612.mockapi.io/me/Dhruv/Matrimony'));

    //close() use to make an http request from instance
    final response = await request.close();

    if(response.statusCode == HttpStatus.ok){
      //response is in ByteStream so we have to make it in String
      final responseBody = await response.transform(utf8.decoder).join();
      final List<Map<String,dynamic>> data = List<Map<String, dynamic>>.from(jsonDecode(responseBody));
      print(data);
      return data;
    }
    else{
      return [];
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            FutureBuilder(
              future: fetchData(),
              builder: (context, snapshot) {
                if(snapshot.connectionState == ConnectionState.waiting){
                  return Center(child: CircularProgressIndicator());
                }
                else if(snapshot.hasError){
                  return Text(snapshot.error.toString());
                }else{
                  users = snapshot.data!;
                  return Expanded(
                    child: ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(users[index]['FullName']),
                          subtitle: Text(users[index]['Gender']),
                        );
                      },
                    ),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}

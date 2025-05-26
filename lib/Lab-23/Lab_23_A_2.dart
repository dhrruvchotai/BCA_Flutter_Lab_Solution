import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserPage extends StatefulWidget {
  @override
  State<UserPage> createState() => PathAndQueryVariableInAPI();
}

class PathAndQueryVariableInAPI extends State<UserPage> {
  Map<String, dynamic>? userData;
  bool isLoading = true;
  String errorMessage = '';

  Future<void> fetchUser(int id) async {
    try {
      // why to use .replace() - Because Uri is immutable — you can’t modify it directly, so you use .replace() to return a new modified Uri with additional parameters.
      final url = Uri.parse('https://jsonplaceholder.typicode.com/users/$id').replace(queryParameters: {'showDetails': 'true'});

      final response = await http.get(url);

      if (response.statusCode == 200) {
        setState(() {
          userData = json.decode(response.body);
          isLoading = false;
        });
      } else {
        setState(() {
          errorMessage = 'Error: ${response.statusCode}';
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = 'Failed to load user';
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchUser(1); // Pass userId here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Details")),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : errorMessage.isNotEmpty
          ? Center(child: Text(errorMessage))
          : Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: ${userData?['name'] ?? ''}", style: TextStyle(fontSize: 22)),
            SizedBox(height: 10),
            Text("Email: ${userData?['email'] ?? ''}", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("Phone: ${userData?['phone'] ?? ''}", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("City: ${userData?['address']['city'] ?? ''}", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

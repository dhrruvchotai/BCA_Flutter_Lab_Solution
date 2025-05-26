import 'package:flutter/material.dart';

class ItemListScreen extends StatefulWidget {
  @override
  _ItemListScreenState createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3'];
  bool showingOriginal = true;

  Future<void> _refreshList() async {
    setState(() {
      if (showingOriginal) {
        items = ['Item A', 'Item B', 'Item C'];
      } else {
        items = ['Item 1', 'Item 2', 'Item 3'];
      }
      showingOriginal = !showingOriginal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Refresh List Example')),
      body: RefreshIndicator(
        onRefresh: _refreshList,
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(items[index]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _refreshList,
        child: Icon(Icons.refresh),
      ),
    );
  }
}

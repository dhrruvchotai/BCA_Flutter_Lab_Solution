import 'package:flutter/material.dart';

class EmployeeEntryScreen extends StatefulWidget {
  @override
  _EmployeeEntryScreenState createState() => _EmployeeEntryScreenState();
}

class _EmployeeEntryScreenState extends State<EmployeeEntryScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  void _submit() async {
    if (_formKey.currentState!.validate()) {
      final data = {
        'Name': nameController.text,
        'DOB': dobController.text,
        'City': cityController.text,
        'Address': addressController.text,
        'Contact': contactController.text,
        'Email': emailController.text,
      };
      // int id = await DatabaseHelper.instance.insertEmployeeDetail(data);
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (_) => DepartmentEntryScreen(empId: id)),
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Employee Entry")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextFormField(
                controller: dobController,
                decoration: InputDecoration(labelText: 'DOB'),
              ),
              TextFormField(
                controller: cityController,
                decoration: InputDecoration(labelText: 'City'),
              ),
              TextFormField(
                controller: addressController,
                decoration: InputDecoration(labelText: 'Address'),
              ),
              TextFormField(
                controller: contactController,
                decoration: InputDecoration(labelText: 'Contact'),
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              ElevatedButton(onPressed: _submit, child: Text("Next")),
            ],
          ),
        ),
      ),
    );
  }
}

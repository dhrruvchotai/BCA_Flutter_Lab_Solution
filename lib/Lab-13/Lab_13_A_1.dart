import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: RegistrationForm()));

class RegistrationForm extends StatefulWidget {
  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();

  // Controllers
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  String? gender;
  bool hobbyReading = false;
  bool hobbyMusic = false;
  bool hobbyTimePass = false;

  // Date Picker
  void _selectDOB() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        dob.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  void _resetForm() {
    firstName.clear();
    lastName.clear();
    email.clear();
    mobile.clear();
    city.clear();
    dob.clear();
    password.clear();
    confirmPassword.clear();
    gender = null;
    hobbyReading = false;
    hobbyMusic = false;
    hobbyTimePass = false;
    _formKey.currentState!.reset();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registration'), backgroundColor: Colors.red),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // First Name
              TextFormField(
                controller: firstName,
                decoration: InputDecoration(labelText: "First Name"),
                validator: (value) =>
                value!.isEmpty ? "Enter first name" : null,
              ),

              // Last Name
              TextFormField(
                controller: lastName,
                decoration: InputDecoration(labelText: "Last Name"),
                validator: (value) =>
                value!.isEmpty ? "Enter last name" : null,
              ),

              // Email
              TextFormField(
                controller: email,
                decoration: InputDecoration(labelText: "Email"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter email";
                  }
                  if (!value.contains("@")) {
                    return "Enter valid email";
                  }
                  return null;
                },
              ),

              // Mobile
              TextFormField(
                controller: mobile,
                decoration: InputDecoration(labelText: "Mobile Number"),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter mobile number";
                  }
                  if (value.length != 10) {
                    return "Mobile number must be 10 digits";
                  }
                  return null;
                },
              ),

              // City
              TextFormField(
                controller: city,
                decoration: InputDecoration(labelText: "City"),
                validator: (value) => value!.isEmpty ? "Enter city" : null,
              ),

              SizedBox(height: 10),

              // Gender
              Text("Gender:", style: TextStyle(fontSize: 16)),
              Row(
                children: [
                  Radio<String>(
                    value: "Male",
                    groupValue: gender,
                    onChanged: (val) {
                      setState(() {
                        gender = val;
                      });
                    },
                  ),
                  Text("Male"),
                  Radio<String>(
                    value: "Female",
                    groupValue: gender,
                    onChanged: (val) {
                      setState(() {
                        gender = val;
                      });
                    },
                  ),
                  Text("Female"),
                ],
              ),
              if (gender == null)
                Text("Please select gender", style: TextStyle(color: Colors.red)),

              // DOB
              TextFormField(
                controller: dob,
                decoration: InputDecoration(labelText: "Date of Birth"),
                readOnly: true,
                onTap: _selectDOB,
                validator: (value) {
                  value!.isEmpty ? "Select date of birth" : null;
                }
              ),

              // Hobbies
              SizedBox(height: 10),
              Text("Hobbies:", style: TextStyle(fontSize: 16)),
              CheckboxListTile(
                title: Text("Reading"),
                value: hobbyReading,
                onChanged: (value) {
                  setState(() {
                    hobbyReading = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Music"),
                value: hobbyMusic,
                onChanged: (value) {
                  setState(() {
                    hobbyMusic = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Time Pass"),
                value: hobbyTimePass,
                onChanged: (value) {
                  setState(() {
                    hobbyTimePass = value!;
                  });
                },
              ),

              // Password
              TextFormField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(labelText: "Password"),
                validator: (value) =>
                value!.isEmpty ? "Enter password" : null,
              ),

              // Confirm Password
              TextFormField(
                controller: confirmPassword,
                obscureText: true,
                decoration: InputDecoration(labelText: "Confirm Password"),
                validator: (value) {
                  if (value!.isEmpty) return "Enter confirm password";
                  if (value != password.text) return "Passwords do not match";
                  return null;
                },
              ),

              SizedBox(height: 20),

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      if (_formKey.currentState!.validate() && gender != null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Form Submitted")),
                        );
                      }
                    },
                    child: Text("Save"),
                  ),
                  ElevatedButton(
                    style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: _resetForm,
                    child: Text("Reset"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

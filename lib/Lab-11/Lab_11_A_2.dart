import 'package:flutter/material.dart';

class LoginScreenWithValidation extends StatefulWidget {
  @override
  State<LoginScreenWithValidation> createState() =>
      _LoginScreenWithValidationState();
}

class _LoginScreenWithValidationState extends State<LoginScreenWithValidation> {
  TextEditingController uname = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(child: Text("Login Page", style: TextStyle(fontSize: 40),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter the Name";
                          }
                          return null;
                        },
                        controller: uname,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: "Userame",
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter the E-mail";
                          }
                          String pattern = r"[a-z]+[0-9]*@gmail.com";
                          var emailRegExp = RegExp(pattern);
                          if (!emailRegExp.hasMatch(value!)) {
                            return "Enter The Valid Mail Address";
                          }
                          return null;
                        },
                        controller: email,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          hintText: "abc@Email.com",
                          labelText: "Email",
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter the Password";
                          }
                          String pattern = r"^(?=.*[a-zA-Z])(?=.*\d).+$";
                          var passwordRegExp = RegExp(pattern);
                          if (!passwordRegExp.hasMatch(value!)) {
                            return "Enter The Valid Password";
                          }
                          return null;
                        },
                        controller: password,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          hintText: "Password",
                          labelText: "Password",
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              print("${uname.text} - ${email.text} - ${password.text}");
                            });
                          }
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Center(
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              "Username: ${uname.text}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Mail: ${email.text}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Password: ${password.text}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

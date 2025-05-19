import 'package:flutter/material.dart';

class RegistrationScreenWithValidation extends StatefulWidget {
  @override
  State<RegistrationScreenWithValidation> createState() => _RegistrationScreenWithValidationState();
}
class _RegistrationScreenWithValidationState extends State<RegistrationScreenWithValidation> {
  TextEditingController uname = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController cpassword = new TextEditingController();
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
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Center(
                            child: Text("Login Page",style: TextStyle(fontSize: 30),)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
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
                            hintText: "Username",
                            labelText: "Enter the Name",
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter the E-mail";
                            }
                            String pattern = "[a-z]+[0-9]*@gmail.com";
                            var emailRegExp = RegExp(pattern);
                            if (!emailRegExp.hasMatch(value!)) {
                              return "Enter The Valid Mail Address";
                            }
                            return null;
                          },
                          controller: email,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            hintText: "abc@Email.com",
                            labelText: "Enter Your Email",
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter the Password";
                            }
                            String pattern = r"^(?=.*[a-zA-Z])(?=.*\d).+$";
                            var passwordRegExp = RegExp(pattern);
                            if (!passwordRegExp.hasMatch(value)) {
                              return "Enter The Valid Password";
                            }
                            return null;
                          },
                          controller: password,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            hintText: "Password",
                            labelText: "Enter Your Password",
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Confirm Password";
                            }

                            // Check for password match and minimum requirements
                            if (value != password.text || !RegExp(r"^(?=.*[a-zA-Z])(?=.*\d).+$").hasMatch(value)) {
                              if (value != password.text) {
                                return "Passwords do not match";
                              } else {
                                return "Password must contain at least one letter and one digit";
                              }
                            }
                            return null;
                          },
                          controller: cpassword,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            hintText: "Password",
                            labelText: "Confirm Password",
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print(uname.text);
                            print(email.text);
                            print(password.text);
                            print(cpassword.text);
                          }
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.black),
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
                            Container(
                              child: Text(
                                "Confirm Password: ${cpassword.text}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

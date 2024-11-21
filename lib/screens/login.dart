import 'package:flutter/material.dart';
import 'package:registeration/screens/signup.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  var isLoader = false;


  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isLoader = true;
      });
      var data = {
        "email": _emailController.text,
        "password": _passwordController.text,
      };
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 80.0,
                    ),
                    SizedBox(
                      width: 250.0,
                      child: Text(
                        "Login \n  Welcome back!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: _buildInputDecoration("Email", Icons.email),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      keyboardType: TextInputType.phone,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: _buildInputDecoration("Password", Icons.lock),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.purple),
                            onPressed:_submitForm,
                            child: Text("Login",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white)))),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()),);

                        },
                        child: Text(
                          "Create new account",
                          style: TextStyle(color: Colors.purple, fontSize: 20.0),
                        ))
                  ],
                )),
          ),
        ));
  }

  InputDecoration _buildInputDecoration(String label, IconData suffixIcon) {
    return InputDecoration(
        fillColor: Colors.grey[50],
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        focusedBorder:
        OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        filled: true,
        labelStyle: TextStyle(color: Colors.black),
        labelText: label,
        suffixIcon: Icon(
          suffixIcon,
          color: Colors.black,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)));
  }
}


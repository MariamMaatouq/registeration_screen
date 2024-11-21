import 'package:flutter/material.dart';
import 'package:registeration/screens/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var _entereduserName = '';
  var _enteredemail = '';
  var _enteredphoneNumber = '';
  var _enteredpassword = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      print(_enteredemail);
      print(_enteredpassword);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
               const  SizedBox(
                  height: 80.0,
                ),
               const  SizedBox(
                  width: 250.0,
                  child: Text(
                    "Creat new Account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                TextFormField(
                  style:const  TextStyle(
                    color: Colors.black,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a username';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    _entereduserName=newValue!;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: _buildInputDecoration("Username", Icons.person),
                ),
               const  SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  style:const  TextStyle(
                    color: Colors.black,
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please enter an email';
                    }
                    RegExp emailRegExp =
                        RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
                    if (!emailRegExp.hasMatch(value)) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    _enteredemail = newValue!;
                  },
                  decoration: _buildInputDecoration("Email", Icons.email),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  style:const  TextStyle(
                    color: Colors.black,
                  ),
                  decoration: _buildInputDecoration("Phone number", Icons.call),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter an phone number';
                    }
                    if (value.length != 11) {
                      return 'please enter a 11-digit phone number';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    _enteredphoneNumber = newValue!;
                  },
                ),
               const  SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  style:const  TextStyle(
                    color: Colors.black,
                  ),
                  decoration: _buildInputDecoration("Password", Icons.lock),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a password';
                    }
                    if (value.length < 6) {
                      return 'Password is too short';
                    }

                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onSaved: (newValue) {
                    _enteredpassword = newValue!;
                  },
                  obscureText: true,
                ),
                const SizedBox(
                  height: 40.0,
                ),
                SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple),
                        onPressed: _submit,
                        child:const  Text("Create",
                            style: TextStyle(
                                fontSize: 20.0, color: Colors.white)))),
                const SizedBox(
                  height: 30.0,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const  LogIn(),));
                    },
                    child:const  Text(
                      "Login",
                      style: TextStyle(color: Colors.purple, fontSize: 20.0),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
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

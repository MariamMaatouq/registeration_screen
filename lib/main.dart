import 'package:flutter/material.dart';
import 'package:registeration/screens/login.dart';
import 'screens/signup.dart';
import 'package:firebase_core/firebase_core.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:SignUp()
    );
  }
}


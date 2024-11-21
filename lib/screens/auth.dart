import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var isLogin=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //   Container(margin: EdgeInsets.all(16),
              //   child: Image.asset(''),),
              Card(
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Form(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                          ),
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          textCapitalization: TextCapitalization.none,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Password',

                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 8,),
                        ElevatedButton(onPressed: (){}, child: Text('SignUp')),
                        TextButton(onPressed: (){
                          setState(() {
                            isLogin=!isLogin;
                          });
                        }, child: Text(isLogin?'Already nave an  account ':'Create an account'))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

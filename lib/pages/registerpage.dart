import 'package:flutter/material.dart';
import 'package:lab8/auth_service.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              // ---------------------------------------------Email--------------------------------------------- 
              Text('Email'),
              TextFormField(
                controller: email,
              ),

              // ---------------------------------------------Password---------------------------------------------
              Text('Password'),
              TextFormField(
                controller: password,
                obscureText: true,
              ),

              // ---------------------------------------------Button---------------------------------------------
              ElevatedButton(
                onPressed: () {
                //  if (formkey.currentState!.validate()){
                    AuthService.registerFunc(email.text, password.text).then((value) {
                      print(email.text);
                      Navigator.pop(context);
                    });
                 // }
                },
                child:Text('Summit')),
            ]
          )
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/auth_service.dart';
import 'package:lab8/pages/Succese.dart';
import 'package:lab8/pages/registerpage.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Text('Firebase'),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              // ---------------------------------------------User--------------------------------------------- 
              Text('Email'),
              TextFormField(
                controller: email,
                validator: (value) {
                   if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    }
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
                    AuthService.signInFunc(email.text, password.text);
                    Navigator.push(
                    context,MaterialPageRoute(builder: (context) => const MySuccese()),);
                },
                child:Text('Summit')),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                  context,MaterialPageRoute(builder: (context) => const MyRegister()),);
                },
                child:Text('Register'))
            ]
          )
      )
    );
  }
}

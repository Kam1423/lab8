import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/pages/registerpage.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    TextEditingController _email = TextEditingController();
    TextEditingController _password = TextEditingController();
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
                controller: _email,
              ),

              // ---------------------------------------------Password---------------------------------------------
              Text('Password'),
              TextFormField(
                controller: _password,
                obscureText: true,
              ),

              // ---------------------------------------------Button---------------------------------------------
              ElevatedButton(
                onPressed: () {},child:Text('Summit')),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context) => const MyRegister()),);
                },child:Text('Register'))
            ]
          )
      )
    );
  }
}

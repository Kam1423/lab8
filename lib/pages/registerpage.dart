import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    TextEditingController _username = TextEditingController();
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
              Text('Username'),
              TextFormField(
                controller: _username,
              ),

              // ---------------------------------------------User--------------------------------------------- 
              Text('Password'),
              TextFormField(
                controller: _email,
              ),

              // ---------------------------------------------Password---------------------------------------------
              Text('Email'),
              TextFormField(
                controller: _password,
                obscureText: true,
              ),

              // ---------------------------------------------Button---------------------------------------------
              ElevatedButton(
                onPressed: () {},child:Text('Summit')),
            ]
          )
      )
    );
  }
}

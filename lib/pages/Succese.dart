import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/auth_service.dart';

class MySuccese extends StatefulWidget {
  const MySuccese({super.key});

  @override
  State<MySuccese> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MySuccese> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('you already sign in'),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              // ---------------------------------------------User--------------------------------------------- 
              Text('Log in successful'),
              // ---------------------------------------------Button---------------------------------------------
              ElevatedButton(
                onPressed: () {
                  AuthService.signOutFunc();
                  Navigator.pop(context);
                },child:Text('Sign out'))

            ]
          )
      )
    );
  }
}

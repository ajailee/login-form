import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app/login.dart';

class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      title: 'Login',

      home: Scaffold(
        appBar: AppBar(title: Text('Login')),
            body:  login(),
      ),
    );
  }
}
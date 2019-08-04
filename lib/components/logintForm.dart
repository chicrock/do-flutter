import 'package:flutter/material.dart';

class LogintForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: <Widget>[
        TextFormField(),
        TextFormField(),
        Text("Forgot Password")
      ],
    ));
  }
}

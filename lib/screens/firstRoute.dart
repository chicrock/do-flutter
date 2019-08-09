import "package:flutter/material.dart";

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to main route when tapped.
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

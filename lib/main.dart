import 'package:doflutter/screens/login.dart';
import 'package:doflutter/stores/joinOrLogin.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Using provider in here
  // for check the provider working well in children widgets
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ChangeNotifierProvider<JoinOrLogin>.value(
            value: JoinOrLogin(), child: AuthScreen()));
  }
}

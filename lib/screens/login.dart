// import 'package:doflutter/components/logintForm.dart';
import 'package:doflutter/helpers/loginBackground.dart';
import 'package:doflutter/screens/firstRoute.dart';
import 'package:doflutter/stores/joinOrLogin.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';

class AuthScreen extends StatelessWidget {
  // Create Formkey for using in the Form
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Get device size
    final Size size = MediaQuery.of(context).size;
    final double basicHeightPadding = size.height * 0.05;
    final JoinOrLogin joinOrLoginProvider = Provider.of<JoinOrLogin>(context);

    return Scaffold(
        body: Stack(alignment: Alignment.center, children: <Widget>[
      CustomPaint(
        size: size,
        painter: LoginBackground(isJoin: joinOrLoginProvider.isJoin),
      ),
      Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            _logoImage,
            Stack(children: <Widget>[
              _inputForm(size),
              _submitButton(size),
            ]),
            Container(height: basicHeightPadding),
            Consumer<JoinOrLogin>(
              builder: (BuildContext context, JoinOrLogin value,
                      Widget child) =>
                  GestureDetector(
                      onTap: () {
                        value.toggle();
                      },
                      child: Text(
                          value.isJoin
                              ? "Already have an Account? Sign in"
                              : "Don't have an Account? Create One",
                          style: TextStyle(
                              color: value.isJoin ? Colors.red : Colors.blue))),
            ),
            Container(height: basicHeightPadding)
          ])
    ]));
  }

  Widget get _logoImage => Expanded(
          child: Padding(
        padding: EdgeInsets.only(top: 40, left: 24, right: 24),
        child: FittedBox(
          child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/login.gif")),
        ),
      ));
  // Get Image with FadeIn from network
  // FadeInImage.assetNetwork(
  //     placeholder: "assets/images/loading.gif",
  //     image: "https://picsum.photos/300"),

  // Get Image from local assets
  // Image.asset("assets/images/loading.gif"),

  Widget _inputForm(Size size) {
    final double basicHeightPadding = size.height * 0.05;
    final double basicWidthPadding = size.width * 0.05;
    final double halfHeightPadding = basicHeightPadding / 2;

    return Padding(
        padding: EdgeInsets.all(basicWidthPadding),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          elevation: 6,
          child: Padding(
              // padding: EdgeInsets.symmetric(
              //     horizontal: 12.0, vertical: 16.0),
              padding: EdgeInsets.only(
                  left: 12.0, right: 12.0, top: 12.0, bottom: 32),
              child: Form(
                  key: _loginFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        controller: _emailController,
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "Please input correct Email";
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                            icon: Icon(Icons.account_circle),
                            labelText: "Email".toUpperCase()),
                      ),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "Please input correct Password";
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                            icon: Icon(Icons.vpn_key),
                            labelText: "Password".toUpperCase()),
                      ),
                      Container(height: halfHeightPadding),
                      Consumer<JoinOrLogin>(
                          builder: (BuildContext context, JoinOrLogin value,
                                  Widget child) =>
                              value.isJoin ? Text("") : Text("Forgot Password"))
                    ],
                  ))),
        ));
  }

  Widget _submitButton(Size size) {
    final double buttonHorizontalPadding = size.width * 0.15;

    return Positioned(
        left: buttonHorizontalPadding,
        right: buttonHorizontalPadding,
        bottom: 0,
        child: SizedBox(
            height: 50,
            child: Consumer<JoinOrLogin>(
                builder: (BuildContext context, JoinOrLogin value,
                        Widget child) =>
                    RaisedButton(
                        child: Text(
                            value.isJoin
                                ? "Join".toUpperCase()
                                : "Login".toUpperCase(),
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        color: value.isJoin ? Colors.red : Colors.blue[900],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        onPressed: () {
                          if (_loginFormKey.currentState.validate()) {
                            print(_emailController.text.toString());
                          }

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FirstRoute()));
                        })))
        // Container(width: 100, height: 100, color: Colors.black),
        );
  }
}

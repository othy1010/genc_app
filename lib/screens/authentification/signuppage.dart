import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gc_app/config/const.dart';
import 'package:gc_app/screens/authentification/auth_wrapper.dart';
import 'package:gc_app/screens/authentification/widget/email_input.dart';
import 'package:gc_app/screens/authentification/widget/password_input.dart';
import 'package:gc_app/services/authentication_service.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              color: Theme.of(context).accentColor,
              height: SizeConfig.screenHeight,
              child: Image(
                image: AssetImage("assets/images/Hinterrhein.png"),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 50,
              left: 40,
              child: InkWell(
                  child: Container(
                    child: Icon(
                      FontAwesomeIcons.solidArrowAltCircleLeft,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ),
            Positioned(
              top: SizeConfig.screenHeight / 2,
              bottom: -5,
              right: -5,
              left: -5,
              child: Container(
                height: SizeConfig.screenHeight / 2,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).accentColor,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).primaryColor,
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Sign Up page",
                          style: TextStyle(
                              fontSize: 50,
                              color: Theme.of(context).accentColor)),
                      Text("Build your own succcess...",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'UI_display_light',
                              color: Theme.of(context).hintColor)),
                      Container(
                        height: 20,
                      ),
                      EmailInputBox(
                        mycontroller: emailController,
                        preChild: Icon(
                          FontAwesomeIcons.solidEnvelope,
                          color: Theme.of(context).primaryColor,
                        ),
                        hintText: "password",
                        labelText: "enter text",
                      ),
                      PasswordInputBox(
                        mycontroller: passwordController,
                        preChild: Icon(
                          FontAwesomeIcons.keycdn,
                          color: Theme.of(context).primaryColor,
                        ),
                        suffixChild: Icon(
                          FontAwesomeIcons.solidEye,
                          color: Theme.of(context).primaryColor,
                        ),
                        hintText: "password",
                        labelText: "enter text",
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 40,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                FontAwesomeIcons.google,
                                color: Theme.of(context).accentColor,
                                size: 35.0,
                              ),
                              onPressed: () async {
                                print("google icon");
                                await context
                                    .read<AuthenticationService>()
                                    .googleSignIn();
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AuthenticationWrapper()),
                                );
                              },
                            ),
                            Container(
                              width: 10,
                            ),
                            IconButton(
                              icon: Icon(
                                FontAwesomeIcons.facebookF,
                                color: Theme.of(context).accentColor,
                                size: 35.0,
                              ),
                              onPressed: () async {
                                print("google icon");
                                await context
                                    .read<AuthenticationService>()
                                    .googleSignIn();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AuthenticationWrapper()),
                                );
                              },
                            ),
                            Container(
                              width: 10,
                            ),
                            IconButton(
                              icon: Icon(
                                FontAwesomeIcons.twitter,
                                color: Theme.of(context).accentColor,
                                size: 38.0,
                              ),
                              onPressed: () async {
                                print("google icon");
                                await context
                                    .read<AuthenticationService>()
                                    .googleSignIn();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AuthenticationWrapper()),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width - 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // background
                            onPrimary: Colors.white,
                            elevation: 0,
                            shadowColor: Colors.black38,
                            side: BorderSide(
                                width: 2, color: Theme.of(context).accentColor),
                            shape: RoundedRectangleBorder(

                                //to set border radius to button
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              fontFamily: 'UI_display_light',
                              fontSize: 20.0,
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                          onPressed: () async {
                            await context.read<AuthenticationService>().signUp(
                                  email: emailController.text.trim(),
                                  password: passwordController.text,
                                );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AuthenticationWrapper()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height - 100,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage("assets/images/Linth.png"), fit: BoxFit.cover),
        // ),
         // TextField(
                //   controller: emailController,
                //   decoration: InputDecoration(
                //     labelText: "Email",
                //   ),
                // ),
                // TextField(
                //   controller: passwordController,
                //   decoration: InputDecoration(
                //     labelText: "Password",
                //   ),
                // ),
                // ElevatedButton(
                //   onPressed: () {
                //     context.read<AuthenticationService>().signIn(
                //           email: emailController.text.trim(),
                //           password: passwordController.text.trim(),
                //         );
                //   },
                //   child: Text("Sign in"),
                // ),
                // ElevatedButton(
                //   onPressed: () {
                //     context.read<AuthenticationService>().signInAnon();
                //   },
                //   child: Text("Sign in anno"),
                // )

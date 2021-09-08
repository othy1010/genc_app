import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gc_app/config/const.dart';
import 'package:gc_app/screens/authentification/landingpage.dart';
import 'package:gc_app/screens/authentification/signinpage.dart';
import 'package:gc_app/screens/home/home_page.dart';
import 'package:provider/provider.dart';

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    if (firebaseUser != null) {
      return HomePage();
    }
    return LandingPage();
  }
}

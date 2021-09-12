import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gc_app/screens/authentification/auth_wrapper.dart';
// import 'package:gc_app/config/const.dart';
// import 'package:gc_app/screens/authentification/auth_wrapper.dart';
// import 'package:gc_app/screens/authentification/landingpage.dart';
// import 'package:gc_app/screens/authentification/signinpage.dart';
// import 'package:gc_app/screens/authentification/signuppage.dart';
// import 'package:gc_app/screens/home/home_page.dart';
import 'package:gc_app/services/authentication_service.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MultiProvider(
        providers: [
          // Provider(
          //   create: (_) {},
          // ),
          Provider<AuthenticationService>(
            create: (_) => AuthenticationService(FirebaseAuth.instance),
          ),
          StreamProvider(
            create: (context) =>
                context.read<AuthenticationService>().authStateChanges,
            initialData: null,
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: Color(0xff00213f),
            accentColor: Color.fromRGBO(249, 212, 14, 1),
            hintColor: Color(0xFFE96048),
            textSelectionColor: Color(0xff5ea7af),
            visualDensity: VisualDensity.adaptivePlatformDensity,
            // appBarTheme: AppBarTheme(
            //   backwardsCompatibility: false, // 1
            //   systemOverlayStyle: SystemUiOverlayStyle.light, // 2
            // ),
          ),
          // home: Center(
          //     child: Container(
          //   color: Colors.amber,
          //   height: 1000 / 2,
          //   width: 1000 / 2,
          // ))
          home: AuthenticationWrapper(),
        ));
    // return Scaffold(
    //   body: Container(
    //     color: Colors.amber,
    //     height: 100,
    //     width: 100,
    //   ),
  }
}

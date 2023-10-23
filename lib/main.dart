import 'package:wajehny/homepage.dart';
import 'package:wajehny/main_page.dart';

import 'screencs/logIn_screen.dart';
import 'screencs/signUp_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wajehny',
      home: const Main_Page(),
      routes: {
        "signup": (context) => SignUp(),
        "login": (context) => LogIn(),
        "homepage": (context) => HomePage()
      },
    );
  } //end widget
} //end class


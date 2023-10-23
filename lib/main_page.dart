import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wajehny/homepage.dart';
import 'package:wajehny/screencs/logIn_screen.dart';

class Main_Page extends StatelessWidget {
  const Main_Page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print("done");
            return HomePage();
          } else {
            print("fail");
            return LogIn();
          }
        },
      ),
    );
  }
} //end class


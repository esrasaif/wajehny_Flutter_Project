import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wajehny/homepage.dart';
import 'package:wajehny/screencs/logIn_screen.dart';

class Main_Page extends StatelessWidget {
  const Main_Page({super.key});
//root widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //if the user autherised will redirect to  home page
          if (snapshot.hasData) {
            print("done");
            return HomePage();
          }
           //if the user unautherised will still in the log-in page 
           else {
            print("fail");
            return LogIn();
          }
        },
      ),
    );
  }
} //end class


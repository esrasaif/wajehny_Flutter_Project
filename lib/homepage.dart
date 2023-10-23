import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        iconTheme: IconThemeData(color: Color.fromRGBO(18, 116, 190, 1)),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text('Hello , Signed as ' + user.email!),
            SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              color: Color.fromRGBO(18, 116, 190, 1),
              child: Text('Sign Out'),
            )
          ],
        ),
      )),
    );
  }
} //end class


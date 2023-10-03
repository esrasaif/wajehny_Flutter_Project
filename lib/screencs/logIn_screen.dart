import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Center(
          child: Column(
            //center elements
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Image.asset(
                'images/logoWajehny.png',
                height: 150,
              ),

              //put space between widges
              SizedBox(height: 20),
              //title
              Text(
                'Sign In',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),

              //subtitle

              //put space between widges
              SizedBox(height: 10),

              //title
              Text(
                'Wellcome back !',
                style: GoogleFonts.robotoCondensed(fontSize: 20),
              ),

              //put space between widges
              SizedBox(height: 50),
              //email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 230, 230),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    //padding left and right
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Email'),
                    ),
                  ),
                ),
              ),

              //put space between widges
              SizedBox(height: 10),
              //password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 230, 230),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    //padding left and right
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'password'),
                    ),
                  ),
                ),
              ),

              //put space between widges
              SizedBox(height: 15),

              //sign in button

              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 118, 135, 150),
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                        child: Text(
                      'Sign In',
                      style: GoogleFonts.robotoCondensed(
                          color: Color.fromARGB(255, 10, 36, 57),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                  )),

              //button : sign up

              //put space between widges
              SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not yet register ? ',
                    style: GoogleFonts.robotoCondensed(fontSize: 20),
                  ),
                  Text(
                    'Sign UP ',
                    style: GoogleFonts.robotoCondensed(
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

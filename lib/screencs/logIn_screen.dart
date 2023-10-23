// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wajehny/components/customButtonAuth.dart';
import 'package:wajehny/components/customLogoAuth.dart';
import 'package:wajehny/components/textformfield.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  get child => null;

  final emailcontroller = TextEditingController();
  final passswordcontroller = TextEditingController();

// //store list of docs
//   List<QueryDocumentSnapshot> data = [];
// //get all data
//   getData() async {
//     QuerySnapshot querySnapshot =
//         await FirebaseFirestore.instance.collection("users").get();
//     data.addAll(querySnapshot.docs);
//   }

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailcontroller.text.trim(),
          password: passswordcontroller.text.trim());
    } catch (e) {
      print('Error during sign-in: $e');
      // Handle the error as needed
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailcontroller.dispose();
    passswordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                //center elements
                // crossAxisAlignment: CrossAxisAlignment.start,

                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  //  Color.fromRGBO(18, 116, 190, 1),

                  //logo
                  CustomLogoAuth(),
                  // // SizedBox(height: 80),
                  // SizedBox(
                  //   height: 200,
                  //   width: 200,
                  //   child: Image(
                  //     image: AssetImage('images/logoWajehny.png'),
                  //     // height: 500,
                  //     // width: 400,
                  //   ),
                  // ),

                  // .asset(
                  //   "images/logoWajenhy.png",
                  //   height: 150,
                  // ),
                  //put space between widges
                  //title

                  Container(
                      // color: Color.fromRGBO(18, 116, 190, 1),
                      width: double.infinity, // Full width
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(18, 116, 190, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(left: 100),
                                child: Row(
                                  children: [
                                    Text(
                                      'Wellcome ',
                                      style: GoogleFonts.robotoCondensed(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 230, 230, 230),
                                      ),
                                    ),
                                    Text(
                                      'Back',
                                      style: GoogleFonts.robotoCondensed(
                                        color: Color.fromRGBO(242, 199, 81, 1),
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            //subtitle

                            //put space between widges
                            SizedBox(height: 2),

                            //title
                            Text(
                              'Sign in to continue!',
                              style: GoogleFonts.robotoCondensed(
                                fontSize: 20,
                                color: Color.fromARGB(255, 230, 230, 230),
                              ),
                            ),

                            //put space between widges
                            SizedBox(height: 20),

                            Container(
                              margin: EdgeInsets.only(
                                  left: 35), // Adjust the margin as needed

                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Email",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 230, 230, 230),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 5),
                            //email
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(122, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                    //padding left and right
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25),
                                    child: CustomTextForm(
                                        controllerField: emailcontroller,
                                        hint: "Enter your email")),
                              ),
                            ),

                            //put space between widges
                            SizedBox(height: 20),

                            Container(
                              margin: EdgeInsets.only(
                                  left: 35), // Adjust the margin as needed

                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Passsword",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 230, 230, 230),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 5),
                            //password
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(122, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  //padding left and right
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                  child: TextField(
                                    obscureText: true,
                                    controller: passswordcontroller,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Enter your password"),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 5),

                            Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.only(right: 30),
                              // alignment: Alignment.topRight,
                              child: const Text("Forgot Password ?",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 230, 230, 230),
                                  )),
                            ),

                            //put space between widges
                            SizedBox(height: 20),

                            //sign in button

                            //sign in button
                            // GestureDetector(
                            //     onTap: signIn,
                            //     child: CustomButtonAuth(
                            //         onPressed: () => {}, title: "Sign In")),

                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: GestureDetector(
                                  onTap: signIn,
                                  child: Container(
                                    padding: EdgeInsets.all(14),
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                        child: Text(
                                      'Sign In',
                                      style: GoogleFonts.robotoCondensed(
                                        color: Color.fromRGBO(18, 116, 190, 1),
                                        fontSize: 20,
                                      ),
                                    )),
                                  ),
                                )),

                            // Padding(
                            //     padding: const EdgeInsets.symmetric(horizontal: 25),
                            //     child: Container(
                            //       padding: EdgeInsets.all(16),
                            //       decoration: BoxDecoration(
                            //           color: Color.fromRGBO(18, 116, 190, 1),
                            //           borderRadius: BorderRadius.circular(12)),
                            //       child: Center(
                            //           child: Text(
                            //         'Sign In',
                            //         style: GoogleFonts.robotoCondensed(
                            //             color: Color.fromARGB(255, 255, 255, 255),
                            //             fontSize: 20,
                            //             fontWeight: FontWeight.bold),
                            //       )),
                            //     )),

                            //button : sign up

                            //put space between widges
                            SizedBox(height: 25),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed("signup");
                              },
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Not Have Account Yet ? ',
                                      style: GoogleFonts.robotoCondensed(
                                        fontSize: 20,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                    ),
                                    Text(
                                      'Sign Up ',
                                      style: GoogleFonts.robotoCondensed(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Color.fromRGBO(242, 199, 81, 1),
                                      ),
                                    )
                                  ]),
                            )
                          ]))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

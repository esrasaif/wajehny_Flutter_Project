import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wajehny/components/customButtonAuth.dart';
import 'package:wajehny/components/customLogoAuth.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _firstname = TextEditingController();
  final _lastname = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();
  final _universityName = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> addUser() {
    // Call the user's CollectionReference to add a new user
    return users.add({
      'fname': _firstname.text, // John Doe
      'lname': _lastname.text, // Stokes and Sons
      'email': _email.text, // 42
      'phone': _phone.text, // John Doe
      'universityName': _universityName.text, // Stokes and Sons
      'password': _password.text // 42
    }).then((value) {
      print("User Added");
      Navigator.of(context).pushNamed("login");
    }).catchError((error) => print("Failed to add user: $error"));
  }

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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, //center elements
                children: [
                  // //logo
                  const CustomLogoAuth(),
                  // SizedBox(
                  //   height: 200,
                  //   width: 200,
                  //   child: Image(
                  //     image: AssetImage('images/logoWajehny.png'),
                  //     // height: 500,
                  //     // width: 400,
                  //   ),
                  // ),

                  // put space between widges
                  //title

                  Text(
                    'Sign Up',
                    style: GoogleFonts.robotoCondensed(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),

                  //subtitle

                  //put space between widges
                  SizedBox(height: 10),

                  //title
                  Text(
                    'Join with Us !',
                    style: GoogleFonts.robotoCondensed(fontSize: 20),
                  ),

                  //put space between widges
                  SizedBox(height: 20),

                  //fname
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 230, 230, 230),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        //padding left and right
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: TextField(
                          controller: _firstname,
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'First name'),
                        ),
                      ),
                    ),
                  ),

                  //put space between widges
                  SizedBox(height: 10),

                  //lname
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 230, 230, 230),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        //padding left and right
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: TextField(
                          controller: _lastname,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Second name'),
                        ),
                      ),
                    ),
                  ),

                  //put space between widges
                  SizedBox(height: 10),

                  //email
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 230, 230, 230),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        //padding left and right
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: TextField(
                          controller: _email,
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Email'),
                        ),
                      ),
                    ),
                  ),

                  //put space between widges
                  SizedBox(height: 10),
                  //University Name
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 230, 230, 230),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        //padding left and right
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: TextField(
                          controller: _universityName,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'University Name'),
                        ),
                      ),
                    ),
                  ),

                  //put space between widges
                  SizedBox(height: 10),
                  //phone number
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 230, 230, 230),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        //padding left and right
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: TextField(
                          controller: _phone,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Phone number'),
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
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        //padding left and right
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: TextField(
                          controller: _password,
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'password'),
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
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        //padding left and right
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: TextField(
                          controller: _confirmPassword,
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'confirm password'),
                        ),
                      ),
                    ),
                  ),

                  //put space between widges
                  SizedBox(height: 15),

                  // //sign up button
                  CustomButtonAuth(onPressed: addUser, title: "Sign Up"),
                  // CustomButtonAuth(
                  //   title: "Sign Up",
                  //   onPressed: () {
                  //     addUser();
                  //   },
                  //   style: GoogleFonts.robotoCondensed(
                  //       color: Color.fromARGB(255, 255, 255, 255),
                  //       fontSize: 20,
                  //       fontWeight: FontWeight.bold),
                  // ),

                  //button : sign up

                  //put space between widges
                  SizedBox(height: 25),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("login");
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Have already Account ? ',
                            style: GoogleFonts.robotoCondensed(fontSize: 20),
                          ),
                          Text(
                            'Sign In ',
                            style: GoogleFonts.robotoCondensed(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color.fromRGBO(242, 199, 81, 1),
                              // color: Color.fromRGBO(18, 116, 190, 1),
                            ),
                          )
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


  //  Padding(
  //                 padding: const EdgeInsets.symmetric(horizontal: 25),
  //                 child: Container(
  //                   padding: EdgeInsets.all(16),
  //                   decoration: BoxDecoration(
  //                       color: Color.fromRGBO(18, 116, 190, 1),
  //                       borderRadius: BorderRadius.circular(12)),
  //                   child: Center(
  //                       child: CustomButtonAuth(
  //                     title: 'Sign Up',
  //                     onPressed: () {addUser()} ,
  //                     style: GoogleFonts.robotoCondensed(
  //                         color: Color.fromARGB(255, 255, 255, 255),
  //                         fontSize: 20,
  //                         fontWeight: FontWeight.bold),
                          
  //                   )),
  //                 )),

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
  //here i defined all the controllers to used when store the data in the database
  final _firstname = TextEditingController();
  final _lastname = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();
  final _universityName = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();

//the firebasestore consist of collection and many documents inside it so here we create our collection
  CollectionReference users = FirebaseFirestore.instance.collection('users');

//this methos will first check if the textfileds are empty ,if it empty wont allow to excute the rest of function and it will print statement 
//then it will check if the both passwords the same?will pass else wont allow allow to excute the rest of function and it will print statement 
//after checking all of this it wil store the data as new document inside the collection where we created previously
  void addUser() {
    final firstName = _firstname.text;
    final lastName = _lastname.text;
    final email = _email.text;
    final phone = _phone.text;
    final universityName = _universityName.text;
    final password = _password.text;
    final confirmPassword = _confirmPassword.text;

    // Check for empty fields
    if (firstName.isEmpty ||
        lastName.isEmpty ||
        email.isEmpty ||
        phone.isEmpty ||
        universityName.isEmpty ||
        password.isEmpty ||
        confirmPassword.isEmpty) {
      print('All fields must be filled out');
      return;
    }

    // Check if passwords match
    if (password != confirmPassword) {
      print('Passwords do not match');
      return;
    }

    // Call the user's CollectionReference to add a new user

    users.add({
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

//here we building our interface
  @override
  Widget build(BuildContext context) {

    //this is the root widget
    return Scaffold(

      //here we determine the background color to the interface and determine the appbar for the interface
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        iconTheme: IconThemeData(color: Color.fromRGBO(18, 116, 190, 1)),
      ),

      //here we create a space between the components of the interface and the border of the interface app
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(

            //here we apply padding for all the compnents in the interface
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, //center elements
                children: [
                  // //logo
                  const CustomLogoAuth(),
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


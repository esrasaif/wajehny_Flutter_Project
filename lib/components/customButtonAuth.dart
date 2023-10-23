import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonAuth extends StatelessWidget {
  final void Function()? onPressed; //end widget
  final String title;
  const CustomButtonAuth({super.key, this.onPressed, required this.title});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310, // Replace 200 with your desired width
      child: MaterialButton(
        height: 25,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        textColor: Color.fromARGB(255, 255, 255, 255),
        color: Color.fromRGBO(18, 116, 190, 1),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20, // Replace 18 with your desired font size
          ),
        ),
        padding: EdgeInsets.all(14),
      ),
    );
  }
} //end class

      //  Padding(
      //               padding: const EdgeInsets.symmetric(horizontal: 25),
      //               child: GestureDetector(
      //                 onTap: signIn,
      //                 child: Container(
      //                   padding: EdgeInsets.all(14),
      //                   decoration: BoxDecoration(
      //                       color: Color.fromRGBO(18, 116, 190, 1),
      //                       borderRadius: BorderRadius.circular(12)),
      //                   child: Center(
      //                       child: Text(
      //                     'Sign In',
      //                     style: GoogleFonts.robotoCondensed(
      //                         color: Color.fromARGB(255, 255, 255, 255),
      //                         fontSize: 20,
      //                         fontWeight: FontWeight.bold),
      //                   )),
      //                 ),
      //               )),

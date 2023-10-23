import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonAuth extends StatelessWidget {
  final void Function()? onPressed; //end widget
  final String title;
  const CustomButtonAuth({super.key, this.onPressed, required this.title});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      
      height: 40,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      textColor: Color.fromARGB(255, 255, 255, 255),
      color: Color.fromRGBO(18, 116, 190, 1),
      onPressed: onPressed,
      child: Text(title),
      // padding: const EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.all(14),
    );
  }
} //end class


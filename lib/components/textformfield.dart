import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final String hint;
  final TextEditingController controllerField;

  const CustomTextForm(
      {super.key, required this.controllerField, required this.hint});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return TextField(
      // if( hint == "Enter your password")
      // {obscureText: true}

      controller: controllerField,
      decoration: InputDecoration(border: InputBorder.none, hintText: hint),
    );
  } //end widget
} //end class


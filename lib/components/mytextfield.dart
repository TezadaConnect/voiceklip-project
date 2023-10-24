import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  // final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    Key? key,
    // required this.controller,
    required this.hintText,
    required this.obscureText,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 220,
      child: TextFormField(
        // validator: validateInput,
        // controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade200),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade500),
        ),
      ),
    );
  }
}
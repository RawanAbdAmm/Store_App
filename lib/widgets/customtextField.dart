// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labeltext;
  Function(String)? onchanged;
  TextInputType? inputType;

  CustomTextField(
      {super.key, required this.labeltext, this.onchanged, this.inputType});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: TextField(
        keyboardType: inputType,
        onChanged: onchanged,
        decoration: InputDecoration(
          labelText: labeltext,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}

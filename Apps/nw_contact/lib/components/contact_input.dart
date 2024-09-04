import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactInput extends StatelessWidget {
  final String hintText;
  final String labelText;
  final bool isNumber;
  final FormFieldSetter<String> onSaved;

  ContactInput({
    required this.hintText,
    required this.labelText,
    required this.isNumber,
    required this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        labelStyle: const TextStyle(
          color: Colors.white,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please, enter a value';
        }
        return null;
      },
    );
  }
}
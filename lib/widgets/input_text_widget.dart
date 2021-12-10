import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final keyboardType;
  final controller;

  const InputTextWidget(
      {required this.labelText,
        required this.obscureText,
        required this.keyboardType,
        this.controller})
      : super();


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      child: Material(
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 15.0),
          child: TextFormField(
              controller: controller,
              obscureText: obscureText,
              autofocus: false,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                labelText: labelText,
                labelStyle: TextStyle(color: Colors.black, fontSize: 18.0),
                hintText: '',
              ),
              validator: (val) {
                if (val!.isEmpty) {
                  return 'Vui Lòng nhập thông tin';
                }
              }),
        ),
      ),
    );
  }
}
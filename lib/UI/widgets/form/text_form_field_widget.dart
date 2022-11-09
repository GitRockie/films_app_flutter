import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final bool obscureTest;
  final TextEditingController textEditingController;
  const TextFormFieldWidget({super.key, required this.obscureTest, required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureTest,
      controller: textEditingController,
      
    );
  }
}
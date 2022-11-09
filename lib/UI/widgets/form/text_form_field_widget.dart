import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final bool obscureTest;
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  const TextFormFieldWidget({super.key, required this.obscureTest, required this.textEditingController, this.validator, this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (newValue) => onSaved,
      obscureText: obscureTest,
      controller: textEditingController,
      
    );
  }
}
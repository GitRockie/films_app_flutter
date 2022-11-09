import 'package:flutter/material.dart';

class CardLoginForm extends StatelessWidget {
  const CardLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  color: Colors.white,
                  child: Container(
                    width: double.infinity,
                    child: Form(
                      child: Container(),),
                    
                  ),
                 );
  }
}
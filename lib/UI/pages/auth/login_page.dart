import 'package:films_app_flutter/UI/widgets/form/card_login_form.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SizedBox(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          height: double.infinity,
          width: double.infinity,
          color: Colors.purple,
          child: Column(
            children: const [
                Text('Welcome!', style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
                ),
               ),
               Expanded(
                
                 child:  CardLoginForm()
               ),
                SizedBox(height: 30,)
            ],
          ),
        )
         ),
    );
  }
}
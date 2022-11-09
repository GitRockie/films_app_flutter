import 'package:films_app_flutter/UI/widgets/form/text_form_field_widget.dart';
import 'package:films_app_flutter/structure/controllers/auth_controller.dart';
import 'package:flutter/material.dart';

class CardLoginForm extends StatelessWidget {
  const CardLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = AuthController();
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.white,
      child: SizedBox(
        width: double.infinity,
        child: Form(
          child: Column(
            children:   [
                TextFormFieldWidget(
                  obscureTest: false, 
                  textEditingController: authController.nameController,
                ),
                TextFormFieldWidget(
                  obscureTest: true, 
                  textEditingController: authController.passwordsController,
                ),
                const SizedBox(height: 50,),
              FloatingActionButton(
                elevation: 0,
                onPressed: (){
                print(authController.nameController.value.text);
              })
            ],
          ),
          
          ),
        
      ),
      );
}
}
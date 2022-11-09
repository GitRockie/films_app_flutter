import 'package:films_app_flutter/UI/utils/validators_utils.dart';
import 'package:films_app_flutter/UI/widgets/form/text_form_field_widget.dart';
import 'package:films_app_flutter/structure/controllers/auth_controller.dart';
import 'package:flutter/material.dart';

class CardLoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
   CardLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = AuthController();
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.white,
      child: SizedBox(
        width: double.infinity,
        child: Form(
          key: _formKey,
          child: Column(
            children:   [
                TextFormFieldWidget(
                  obscureTest: false, 
                  textEditingController: authController.nameController,
                  validator: ((p0) {
                    FormValidator().isValidName;
                  }),
                  
                  onSaved: (value) {
                    authController.nameController.value;
                  },
                ),
                
                TextFormFieldWidget(
                  obscureTest: true, 
                  textEditingController: authController.passwordController,
                ),
                const SizedBox(height: 50,),
              MaterialButton(
                child: Container(
                  height: 30,
                  width: 100,
                  color: Colors.pink,
                  child: const Center(
                    child: Text('Login'),
                  ),
                ),
                
                onPressed: (){
                if (_formKey.currentState!.validate()==true) {
                   print('Form is valid');
                } else {
                   print('Try again');
                }
                
              })
            ],
          ),
          
          ),
        
      ),
      );
}
}
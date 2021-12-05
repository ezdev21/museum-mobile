import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:ecommerce/constants.dart';

class Register extends StatefulWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key:_formKey,
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
           TextFormField(
            controller: _emailController,
            validator: (value)=>EmailValidator.validate(value) ? null : 'enter a valid email',
            decoration:textInputDecoration.copyWith(hintText:'email',labelText:'email')
           ),
           TextFormField(
            controller: _passwordController,
            validator: (value)=>value.isEmpty()? 'password required':'',
            decoration:textInputDecoration.copyWith(hintText:'password',labelText:'password')
           ),
           sizedBox(height:20),
           TextButton(
             onPressed: (){
              Map creds={
                'email':_emailController.text,
                'password':_passwordController.text,
                'device_name':'mobile'
              };
              if(_formKey.currentState.validate()){

              }
             },
             child: Text(
               'login',
               style:TextStyle(
                fontSize:20,
                color:Colors.white,
                backgroundColor:Colors.red
               )
              ),
           ) 
          ],
          )
        ),
    );
  }
}
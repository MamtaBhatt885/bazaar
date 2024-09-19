import 'package:bazaar/common/helper/navigator/app_navigator.dart';
import 'package:bazaar/common/widgets/appbar/app_bar.dart';
import 'package:bazaar/data/auth/models/user_creation_req.dart';
import 'package:bazaar/presentation/auth/pages/enter_password.dart';
import 'package:bazaar/presentation/auth/pages/gender_and_age_selection.dart';
import 'package:bazaar/presentation/auth/pages/sign_in.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/button/basic_app_button.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final TextEditingController _firstNameCon = TextEditingController();
  final TextEditingController _lastNameCon = TextEditingController();
  final TextEditingController _emailCon = TextEditingController();
  final TextEditingController _passwordCon = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const BasicAppbar(),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _signUpText(context),
              SizedBox(height: 10,),
              _firstname(context),
              SizedBox(height: 10,),
              _lastname(context),
              SizedBox(height: 10,),
              _emailField(context),
              SizedBox(height: 20,),
              _passwordField(context),
              SizedBox(height: 20,),
              _continueButton(context),
              SizedBox(height: 20,),
              _createAccount(context)
            ],
          ),
        ),
    );
  }


  Widget _signUpText(BuildContext context){
    return const Text('Create Account',
      style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _firstname(BuildContext context){
    return TextField(
      controller: _firstNameCon,
      decoration: InputDecoration(
          hintText: 'Enter your first name'
      ),
    );
  }

  Widget _lastname(BuildContext context){
    return TextField(
      controller: _lastNameCon,
      decoration: InputDecoration(
          hintText: 'Enter your last name'
      ),
    );
  }


  Widget _emailField(BuildContext context){
    return TextField(
      controller: _emailCon,
      decoration: InputDecoration(
          hintText: 'Enter email'
      ),
    );
  }

  Widget _passwordField(BuildContext context){
    return TextField(
      controller: _passwordCon,
      decoration: InputDecoration(
          hintText: 'Enter your password'
      ),
    );
  }

  Widget _continueButton(BuildContext context){
    return BasicAppButton(
      onPressed:(){
        AppNavigator.push(context, GenderAndAgeSelectionPage(
          userCreationReq: UserCreationReq(
              firstName: _firstNameCon.text,
              lastName: _lastNameCon.text,
              email: _emailCon.text,
              password: _passwordCon.text)
        ));
      } ,
      title:'Continue',
    );
  }

  Widget _createAccount(BuildContext context){
    return RichText(text: TextSpan(
        children: [
          TextSpan(
              text: "Already have an account? "
          ),
          TextSpan(
              text: 'Sign In',
              recognizer: TapGestureRecognizer()..onTap = (){
AppNavigator.push(context, SignInPage());
              },
              style: TextStyle(
                  fontWeight: FontWeight.bold
              )
          )
        ]
    ));
  }

}

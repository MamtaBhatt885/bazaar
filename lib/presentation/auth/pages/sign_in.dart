import 'package:bazaar/common/helper/navigator/app_navigator.dart';
import 'package:bazaar/common/widgets/appbar/app_bar.dart';
import 'package:bazaar/presentation/auth/pages/enter_password.dart';
import 'package:bazaar/presentation/auth/pages/sign_up.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/button/basic_app_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const BasicAppbar(hideBack: true,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signInText(context),
            SizedBox(height: 10,),
            _emailField(context),
            SizedBox(height: 20,),
            _continueButton(context),
            SizedBox(height: 20,),
            _createAccount(context)
          ],
        ),
      ),
    );
  }


  Widget _signInText(BuildContext context){
    return const Text('Sign in',
    style: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold
    ),
    );
  }

  Widget _emailField(BuildContext context){
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter email'
      ),
    );
  }

  Widget _continueButton(BuildContext context){
    return BasicAppButton(
    onPressed:(){
      AppNavigator.push(context, EnterPassword());
    } ,
      title:'Continue',
    );
  }

  Widget _createAccount(BuildContext context){
    return RichText(text: TextSpan(
      children: [
        TextSpan(
          text: "Don't you have an account? "
        ),
        TextSpan(
          text: 'Create One',
          recognizer: TapGestureRecognizer()..onTap = (){
AppNavigator.push(context, SignUpPage());
          },
          style: TextStyle(
            fontWeight: FontWeight.bold
          )
        )
      ]
    ));
  }

}

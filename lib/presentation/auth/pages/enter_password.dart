import 'package:bazaar/common/helper/navigator/app_navigator.dart';
import 'package:bazaar/common/widgets/appbar/app_bar.dart';
import 'package:bazaar/presentation/auth/pages/forgot_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../common/widgets/button/basic_app_button.dart';


class EnterPassword extends StatelessWidget {
  const EnterPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _enterPassword(context),
            SizedBox(height: 10,),
            _passwordField(context),
            SizedBox(height: 20,),
            _continueButton(),
            SizedBox(height: 10,),
            _forgotPassword(context)
          ],
        ),
      ),
    );
  }


  Widget _enterPassword(BuildContext context){
    return const Text('Enter Password',
      style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _passwordField(BuildContext context){
    return TextField(
      decoration: InputDecoration(
          hintText: 'Enter password'
      ),
    );
  }

  Widget _continueButton(){
    return BasicAppButton(
      onPressed:(){} ,
      title:'Continue',
    );
  }

  Widget _forgotPassword(BuildContext context){
    return RichText(text: TextSpan(
        children: [
          TextSpan(
              text: "Forgot Password? "
          ),
          TextSpan(
              text: 'Reset',
              recognizer: TapGestureRecognizer()..onTap = (){
              AppNavigator.push(context, ForgotPassword());
              },
              style: TextStyle(
                  fontWeight: FontWeight.bold
              )
          )
        ]
    ));
  }

}


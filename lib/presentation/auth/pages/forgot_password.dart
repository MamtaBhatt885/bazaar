import 'package:bazaar/common/helper/navigator/app_navigator.dart';
import 'package:bazaar/common/widgets/appbar/app_bar.dart';
import 'package:bazaar/presentation/auth/pages/enter_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/button/basic_app_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _forgotPassword(context),
            SizedBox(height: 10,),
            _emailField(context),
            SizedBox(height: 20,),
            _continueButton(context),
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }


  Widget _forgotPassword(BuildContext context){
    return const Text('Forgot Password',
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



}

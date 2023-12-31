import 'package:android_studio/widgets/login_button.dart';
import 'package:android_studio/widgets/login_field.dart';
import 'package:android_studio/widgets/social_button.dart';
import 'package:flutter/material.dart';
import 'package:android_studio/pallete.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset( 'assets/images/signin_balls.png'),
             const Text('Sign in.',
               style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: Pallete.whiteColor),
             ),
              const SizedBox(height: 50),
              const SocialButton(
                iconPath: 'assets/svgs/g_logo.svg', label: 'Continue with Google', horizontal:100,
              ),
              const SizedBox(height: 20),
              const SocialButton(
                  iconPath: 'assets/svgs/f_logo.svg', label: 'Continue with Facebook', horizontal: 90,
              ),
              const SizedBox(height: 15),
              const Text('or', style: TextStyle(fontSize: 17),),
              const SizedBox(height: 15),
              const LoginField(hintText: 'Email'),
              const SizedBox(height: 15),
              const LoginField(hintText: 'Password'),
              const SizedBox(height: 20),
              const LoginButton(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

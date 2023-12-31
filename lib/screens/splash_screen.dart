import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:android_studio/pallete.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Container(alignment: Alignment.center,

          color:  Colors.grey.shade100,
          width: 300,
          padding:const EdgeInsets.all(10.0),
          child: Column(
              children: [
                 Image.asset('assets/images/computer.png', width: 70, height: 70),
                RichText(textAlign: TextAlign.center,
                    text:const TextSpan(
                      text: 'COMPUTER',
                      style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold ,color: Pallete.text1),
                      children: [
                        TextSpan(
                          text: '   VILLAGE',
                          style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic,
                             fontWeight: FontWeight.bold ,color: Pallete.text1)
                        )
                      ]
                    ),

                )

              ],
            ),
        ),

        nextScreen: const LoginScreen(),
    backgroundColor: Pallete.pageColor,
      duration: 6000,
      splashTransition: SplashTransition.slideTransition,
    );
  }
}

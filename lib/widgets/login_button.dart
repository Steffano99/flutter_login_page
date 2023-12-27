import 'package:flutter/material.dart';
import 'package:android_studio/pallete.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        gradient: const LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight,
            colors: [
            Pallete.gradient1,
            Pallete.gradient2,
            Pallete.gradient3
        ]),
        borderRadius: BorderRadiusDirectional.circular(8.0)
      ),
      child: ElevatedButton(onPressed: (){},
        style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape:const ContinuousRectangleBorder(),
          fixedSize: const Size(395, 55)
        ),
          child:const Text('Log in',
            style:TextStyle(fontWeight: FontWeight.w700, fontSize: 17) ,),),
    );
  }
}

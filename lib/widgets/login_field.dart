import 'package:android_studio/pallete.dart';
import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  const LoginField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(constraints:const BoxConstraints(maxWidth: 400),
      child: TextFormField(
        decoration:  InputDecoration(contentPadding: const EdgeInsets.all(25),enabledBorder: const OutlineInputBorder(
          borderSide:BorderSide(color:Pallete.borderColor, width: 3)
        ),
          focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color:Pallete.gradient2, width: 2),
              borderRadius:BorderRadius.circular(5.0)
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}

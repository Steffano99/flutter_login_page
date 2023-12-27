import 'package:android_studio/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
final double horizontal;
  const SocialButton({super.key, required this.iconPath, required this.label, this.horizontal=100});

  @override
  Widget build(BuildContext context) {
    return  TextButton.icon(onPressed: (){},
        icon: SvgPicture.asset(iconPath, color: Pallete.whiteColor, width: 25,),
        label: Text(
            label, style:const TextStyle(fontSize: 17, color: Pallete.whiteColor)
        ),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: horizontal),
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)),
          side: BorderSide(color: Pallete.borderColor,width: 3)
      )
      )
    );
  }
}
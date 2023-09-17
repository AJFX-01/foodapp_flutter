import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodapp/utils/dimensions.dart';
import 'package:foodapp/widgets/small_text.dart';

class IconAndtext extends StatelessWidget {
  final IconData icon;

  final String text;
  final Color iconColor;


  const IconAndtext({super.key, 
  required this.icon,

  required this.text,
  required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,
        color: iconColor,
        size: Dimension.iconSize24,),
        const SizedBox(width: 5,),
        SmallText(text: text,)
      ],
    );
  }
}

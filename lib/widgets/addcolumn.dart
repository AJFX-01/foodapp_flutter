import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:foodapp/utils/dimensions.dart';
import 'package:foodapp/widgets/small_text.dart';

import '../utils/colors.dart';
import 'big_text.dart';
import 'icon_text.dart';

class AppColumn extends StatelessWidget {
  final String text;

  const AppColumn ({Key? key , required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimension.font26,),
        SizedBox(
          height: Dimension.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: AppColors.mainColor,
                        size: 15,
                      )),
            ),
            const SizedBox(width: 10),
            SmallText(text: '4.5'),
            const SizedBox(width: 10),
            SmallText(text: '1287'),
            const SizedBox(width: 10),
            SmallText(text: 'comments')
          ],
        ),
        SizedBox(
          height: Dimension.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndtext(
              icon: Icons.circle_sharp,
              text: 'Normal',
              iconColor: AppColors.iconColor1,
            ),
            IconAndtext(
              icon: Icons.location_on,
              text: '1.7km',
              iconColor: AppColors.mainColor,
            ),
            IconAndtext(
              icon: Icons.access_alarms_rounded,
              text: '32min',
              iconColor: AppColors.iconColor1,
            )
          ],
        )
      ],
    );
  }
}

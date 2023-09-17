import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/widgets/small_text.dart';

import '../utils/dimensions.dart';

class ExpandText extends StatefulWidget {
  final String text;
  const ExpandText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandText> createState() => _ExpandTextState();
}

class _ExpandTextState extends State<ExpandText> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = Dimension.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
            color: AppColors.paraColor,
            size: Dimension.font16,
             text: firstHalf)
          : Column(
              children: [
                SmallText(
                  height:  1.8,
                  size: Dimension.font16,
                  color: AppColors.paraColor,
                    text: hiddenText
                        ? (firstHalf + "......")
                        : (firstHalf + secondHalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        text: 'Show More,',
                        color: AppColors.mainColor,
                      ),
                      Icon(
                        hiddenText?Icons.arrow_drop_down: Icons.arrow_drop_up,
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}

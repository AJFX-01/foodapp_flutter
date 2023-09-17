// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:foodapp/pages/home/foodpagebody.dart';
import 'package:foodapp/utils/dimensions.dart';
import 'package:foodapp/widgets/big_text.dart';
import 'package:foodapp/widgets/small_text.dart';

import '../../utils/colors.dart';

class MainFoodPAge extends StatefulWidget {
  const MainFoodPAge({super.key});

  @override
  State<MainFoodPAge> createState() => _MainFoodPAgeState();
}

class _MainFoodPAgeState extends State<MainFoodPAge> {
  @override
  Widget build(BuildContext context) {
    print('current height is' + MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimension.height45, bottom: Dimension.height15),
              padding: EdgeInsets.only(left: Dimension.width20, right: Dimension.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: 'Nigeria', color: AppColors.mainColor),
                      Row(
                        children: [
                          SmallText(text: "Lagos", color: Colors.black54),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimension.height45,
                      height: Dimension.height45,
                      child:  Icon(Icons.search, color: Colors.white, size: Dimension.iconSize24),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimension.radius15),
                          color: AppColors.mainColor),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: FoodPageBody()))
        ],
      ),
    );
  }
}

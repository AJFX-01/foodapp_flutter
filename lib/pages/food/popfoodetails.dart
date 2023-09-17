import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodapp/utils/dimensions.dart';
import 'package:foodapp/widgets/helpicon.dart';
import '';
import '../../utils/colors.dart';
import '../../widgets/addcolumn.dart';
import '../../widgets/big_text.dart';
import '../../widgets/exptext.dart';
import '../../widgets/icon_text.dart';
import '../../widgets/small_text.dart';

class PopulaFoodDeets extends StatelessWidget {
  const PopulaFoodDeets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimension.populafoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('/image/food0.png'))
              ),
            )
            ),
            Positioned(
              top: Dimension.height45,
              left: Dimension.width20,
              right: Dimension.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIconn(icon: Icons.arrow_back_ios),
                  AppIconn(icon: Icons.shopping_cart_checkout_outlined)
                ],
              )
              ), 
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: Dimension.populafoodImgSize -20,
                child: Container(
                  padding: EdgeInsets.only(left: Dimension.width20, right: Dimension.width20, top: Dimension.height20),
                  decoration: BoxDecoration(borderRadius: BorderRadius.only(
                    topRight:Radius.circular(Dimension.radius20),
                    topLeft: Radius.circular(Dimension.radius20),
                  ),
                  color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppColumn(text:'Chinese side'),
                      SizedBox(height: Dimension.height20,),
                      BigText(text: 'introduce'),
                      SizedBox(height: Dimension.height20,),
                      Expanded(child: SingleChildScrollView(child: ExpandText(text: 'So life got crazy, even if i go to hell, i wont be lonley, if was sinning, i will be the homies the day one day you will Mandarin Chinese is a fairly complex language to learn, especially for English speakers. However, with commitment and daily practice, it is certainly possible to successfully master. Practice alone with your textbooks, with Mandarin-speaking friends, or online with the many online Mandarin schools that exist. Keep reading for a The second tone is a rising tone. Your voice rises from a low to middle pitch, as if you were asking someone to repeat something by saying "huh?" or "what?" The second tone is indicated using the symbol The third tone is a dipping tone. The pitch goes from middle to low to high, like when you say the letter "B". When two third-tone syllables are near each other, the second one retains its third tone sound while the first takes the sound of the second tone. The third tone is indicated using the symbol "mǎ".basic overview of the most important things you neleave ythis world behind, so live a life you remeber, so mamma told me it alright, so live a life we wil rmener')))
                    ],
                  ),
                  
              ),
              
            )
        ], 
      ),
      bottomNavigationBar: Container(
        height: Dimension.buttomHeightBar,
        padding: EdgeInsets.only(top: Dimension.height30, bottom: Dimension.height30, left: Dimension.width20, right: Dimension.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimension.radius20 * 2),
            topRight: Radius.circular(Dimension.radius20 * 2)
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(top: Dimension.height20, bottom: Dimension.height20, left: Dimension.width20, right: Dimension.width20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius20),
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    Icon(Icons.remove,
                    color: AppColors.signColor,),
                    SizedBox(width: Dimension.width10/2,),
                    BigText(text: '0'),
                    SizedBox(width: Dimension.width10/2,),
                    Icon(Icons.add, 
                    color: AppColors.signColor,)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: Dimension.height20, bottom: Dimension.height20, left: Dimension.width20, right: Dimension.width20), 
                child: BigText(
                  text: '\$10 | Add to cart',
                  color: Colors.white,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius20),
                  color: AppColors.mainColor
                ),
              )
            ],
          ),
      ),
    );
  }
} 
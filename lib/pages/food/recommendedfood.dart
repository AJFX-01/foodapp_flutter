import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/utils/dimensions.dart';
import 'package:foodapp/widgets/big_text.dart';
import 'package:foodapp/widgets/exptext.dart';
import 'package:foodapp/widgets/helpicon.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIconn(icon: Icons.clear),
                AppIconn(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                child: Center(
                  child: BigText(
                    size:Dimension.font26,
                    text: 'CHinese Side')
                    ),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimension.radius20),
                    topRight: Radius.circular(Dimension.radius20)
                  )
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('/image/food0.png',
              width: double.maxFinite,
              fit: BoxFit.cover,
              )
            ),
          ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                child: ExpandText(text:'So life got crazy, even if i go to hell, i wont be lonley, if was sinning, i will be the homies the day one day you will Mandarin Chinese is a fairly complex language to learn, especially for English speakers. However, with commitment and daily practice, it is certainly possible to successfully master. Practice alone with your textbooks, with Mandarin-speaking friends, or online with the many online Mandarin schools that exist. Keep reading for a The second tone is a rising tone. Your voice rises from a low to middle pitch, as if you were asking someone to repeat something by saying "huh?" or "what?" The second tone is indicated using the symbol The third tone is a dipping tone. The pitch goes from middle to low to high, like when you say the letter "B". When two third-tone syllables are near each other, the second one retains its third tone sound while the first takes the sound of the second tone. The third tone is indicated using the symbol "mǎ".basic overview of the most important things you neleave ythis world behind, so live a life you remeber, so mamma told me it alright, so live a life we wil rmener life got crazy, even if i go to hell, i wont be lonley, if was sinning, i will be the homies the day one day you will Mandarin Chinese is a fairly complex language to learn, especially for English speakers. However, with commitment and daily practice, it is certainly possible to successfully master. Practice alone with your textbooks, with Mandarin-speaking friends, or online with the many online Mandarin schools that exist. Keep reading for a The second tone is a rising tone. Your voice rises from a low to middle pitch, as if you were asking someone to repeat something by saying  The second tone is indicated using the symbol The third tone is a dipping tone. The pitch goes from middle to low to high, like when you say the letter . When two third-tone syllables are near each other, the second one retains its third tone sound while the first takes the sound of the second tone. The third tone is indicated using the symbol.basic overview of the most important things you neleave ythis world behind, so live a life you remeber, so mamma told me it alright, so live a life we wil rmener So life got crazy, even if i go to hell, i wont be lonley, if was sinning, i will be the homies the day one day you will Mandarin Chinese is a fairly complex language to learn, especially for English speakers. However, with commitment and daily practice, it is certainly possible to successfully master. Practice alone with your textbooks, with Mandarin-speaking friends, or online with the many online Mandarin schools that exist. Keep reading for a The second tone is a rising tone. Your voice rises from a low to middle pitch, as if you were asking someone to repeat something by saying "huh?" or "what?" The second tone is indicated using the symbol The third tone is a dipping tone. The pitch goes from middle to low to high, like when you say the letter "B". When two third-tone syllables are near each other, the second one retains its third tone sound while the first takes the sound of the second tone. The third tone is indicated using the symbol "mǎ".basic overview of the most important things you neleave ythis world behind, so live a life you remeber, so mamma told me it alright, so live a life we wil rmener'),
                margin: EdgeInsets.only(left: Dimension.width20, right:Dimension.width20 ),
                ),
            ],
          ),
         ) 
      ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimension.width20 * 2.5,
              right: Dimension.width20 * 2.5,
              top: Dimension.height10,
              bottom: Dimension.height10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIconn(
                  icon: Icons.remove,
                  iconSize: Dimension.iconSize24,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white),
                BigText(
                  text:'\$12.88 '+ 'x' + '0',
                  color: AppColors.mainBlackColor,
                  size:  Dimension.font26,),
                AppIconn(
                  icon: Icons.add,
                  iconSize: Dimension.iconSize24,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white)
              ],
            ),
          ),
          Container(
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
                child:Icon(
                  Icons.favorite,
                  color: AppColors.mainColor, 
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
      )
        ],
      ),
    );
  }
}
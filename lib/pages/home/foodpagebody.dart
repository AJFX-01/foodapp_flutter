import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodapp/controllers/popular_productsControllers.dart';
import 'package:foodapp/controllers/recommended_product_controller.dart';
import 'package:foodapp/utils/appconst.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/utils/dimensions.dart';
import 'package:foodapp/widgets/addcolumn.dart';
import 'package:foodapp/widgets/big_text.dart';
import 'package:foodapp/widgets/icon_text.dart';
import 'package:foodapp/widgets/small_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:get/get.dart';

import '../../models/popular_product_model.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentpagevalue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimension.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentpagevalue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GetBuilder<PopularProductController>(builder: (popularProducts) {
        return popularProducts.isLoaded
            ? Container(
                height: Dimension.pageView,
                child: PageView.builder(
                    controller: pageController,
                    itemCount: popularProducts.popularProductList.length,
                    itemBuilder: (context, position) {
                      return _buildPageItem(position,
                          popularProducts.popularProductList[position]);
                    }),
              )
            : CircularProgressIndicator(
                color: AppColors.mainColor,
              );
      }),
      GetBuilder<PopularProductController>(
        builder: (popularProducts) {
          return DotsIndicator(
              dotsCount: popularProducts.popularProductList.isEmpty
                  ? 1
                  : popularProducts.popularProductList.length,
              position: _currentpagevalue.toInt(),
              decorator: DotsDecorator(
                activeColor: AppColors.mainColor,
                size: const Size.square(18.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ));
        },
      ),
      SizedBox(
        height: Dimension.height30,
      ),
      Container(
        margin: EdgeInsets.only(left: Dimension.width30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            BigText(text: 'Recommended'),
            SizedBox(width: Dimension.width10),
            Container(
              margin: const EdgeInsets.only(bottom: 3),
              child: BigText(text: '.', color: Colors.black26),
            ),
            SizedBox(
              width: Dimension.width10,
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(text: 'Food Paring')),
          ],
        ),
      ),
      GetBuilder<RecommendedProductController>(builder: (recommendedProducts) {
        return recommendedProducts.isLoaded
            ? ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: recommendedProducts.recommendedProductList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                        right: Dimension.width20,
                        left: Dimension.width20,
                        bottom: Dimension.height10),
                    child: Row(
                      children: [
                        Container(
                          width: Dimension.listViewImgSize,
                          height: Dimension.listViewImgSize,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimension.radius20),
                              color: Colors.white38,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(AppConstant.BASE_URL+AppConstant.UPLOAD_URL+recommendedProducts.recommendedProductList[index].img!
                                  )
                                )
                              ),
                        ),
                        // Text Container
                        Expanded(
                          child: Container(
                            height: Dimension.listViewTextContsize,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight:
                                        Radius.circular(Dimension.radius20),
                                    bottomRight:
                                        Radius.circular(Dimension.radius20)),
                                color: Colors.white),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: Dimension.width10,
                                  right: Dimension.width10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BigText(
                                    text: 'Nutritious Fruit meal in Nigeria',
                                  ),
                                  SizedBox(
                                    height: Dimension.height10,
                                  ),
                                  SmallText(
                                      text: 'With Nigerian Characteristic'),
                                  SizedBox(
                                    height: Dimension.height10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }): CircularProgressIndicator(
                color: AppColors.mainColor,
              );
      })
      //list of food and item
    ]);
  }

  Widget _buildPageItem(int index, ProductModel popularProduts) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentpagevalue.floor()) {
      var currentScale = 1 - (_currentpagevalue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentpagevalue.floor() + 1) {
      var currentScale =
          _scaleFactor + (_currentpagevalue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentpagevalue.floor() - 1) {
      var currentScale = 1 - (_currentpagevalue - index) * (1 - _scaleFactor);
      //var currTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, 0, 0);
    } else {
      var currentScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimension.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimension.width10, right: Dimension.width10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius30),
                color: index.isEven
                    ? const Color(0xFF69c5df)
                    : const Color(0xFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(AppConstant.BASE_URL + AppConstant.UPLOAD_URL+
                        popularProduts.img!))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimension.pageViewTextContainer,
              margin: EdgeInsets.only(
                  left: Dimension.width30,
                  right: Dimension.width30,
                  bottom: Dimension.height30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0, 5)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0))
                  ]),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimension.height15,
                    left: Dimension.width15,
                    right: Dimension.width15),
                child: AppColumn(
                  text: popularProduts.name!,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

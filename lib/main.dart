import 'package:flutter/material.dart';
import 'package:foodapp/controllers/popular_productsControllers.dart';
import 'package:foodapp/controllers/recommended_product_controller.dart';
import 'package:foodapp/pages/food/popfoodetails.dart';
import 'package:foodapp/pages/food/recommendedfood.dart';
import 'package:foodapp/pages/home/foodpagebody.dart';
import 'package:foodapp/pages/home/main_foodpage.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dp;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dp.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PopulaFoodDeets(),
    );
  }
}

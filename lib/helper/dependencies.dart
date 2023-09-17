import 'package:foodapp/controllers/popular_productsControllers.dart';
import 'package:foodapp/controllers/recommended_product_controller.dart';
import 'package:foodapp/data/api/api_client.dart';
import 'package:foodapp/data/repository/product_repo.dart';
import 'package:foodapp/data/repository/recommended_product_repo.dart';
import 'package:get/get.dart';

import '../utils/appconst.dart';

Future<void> init() async {
  // APi Clients
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstant.BASE_URL));

  // Repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  // Controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));
}

import 'package:foodapp/data/api/api_client.dart';
import 'package:get/get.dart';

import '../../utils/appconst.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppConstant.POPULAR_PRODUCT_URI);
  }
}

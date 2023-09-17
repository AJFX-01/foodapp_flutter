import 'package:get/get.dart';

class Dimension {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  // Scalling the height of container, will original device height/ height of the container
  // 844/220 = 3.84
  // same has the whole page view container 844/ 320 = 2.65
  // same goes for text container 844/120 = 7.03
  static double pageView = screenHeight / 2.64;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.03;

  // Sizedbox height 10
  static double height10 = screenHeight / 84.4;
  static double height20 = screenHeight / 42.2;
  static double height15 = screenHeight / 56.27;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;

  // Dynamic width
  static double width10 = screenHeight / 84.4;
  static double width20 = screenHeight / 42.2;
  static double width15 = screenHeight / 56.27;
  static double width30 = screenHeight / 28.13;

  // dynamic fonts
  static double font16 = screenHeight / 52.75;
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.46;
  // dynamic radius
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;
  static double radius15 = screenHeight / 56.27;

  // Icon Size
  static double iconSize24 = screenHeight / 35.17;
  static double iconSize16 = screenHeight / 52.75;

  // list view size
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContsize = screenWidth / 3.9;

  //popula food

  static double populafoodImgSize = screenHeight / 2.41;

  // bottom height
  static double buttomHeightBar = screenHeight / 7.03;
}

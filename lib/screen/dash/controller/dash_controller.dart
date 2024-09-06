part of '../../file_import.dart';

class DashController extends GetxController {
  RxInt screenIndex = 0.obs;
  Rx<PageController> pageController = PageController(initialPage:0).obs;
}
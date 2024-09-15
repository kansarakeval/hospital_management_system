part of '../../file_import.dart';

class ProfileController extends GetxController{
  RxBool islight = false.obs;

  void changeTheme() async {
    ShareHelper shr = ShareHelper();
    bool? istheme = await shr.getTheme();
    islight.value = istheme ?? false;
  }
}
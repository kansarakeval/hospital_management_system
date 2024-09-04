import 'package:shared_preferences/shared_preferences.dart';

class ShareHelper{
  void setIntroStatus() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool('intro', true);
  }

  Future<bool?> getIntroStatus() async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    bool? status = shr.getBool('intro');
    return status;
  }
}
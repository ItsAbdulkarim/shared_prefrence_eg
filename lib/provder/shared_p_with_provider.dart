import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePreWithProviderclass extends ChangeNotifier {
  bool isLightOn = false;
  void saved() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    await sharedPreferences.setBool('isLLighOn', isLightOn);
    isLightOn = !isLightOn;
    notifyListeners();
  }

  void getData() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    isLightOn = sharedPreferences.getBool('isLLighOn') ?? false;
    notifyListeners();
  }
}

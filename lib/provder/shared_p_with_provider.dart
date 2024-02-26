import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePreWithProviderclass extends ChangeNotifier {
  late bool isLightOn ;

  SharePreWithProviderclass() {
    // Initialize isLightOn in the constructor or use a default value if needed
    // Example:
    isLightOn=false;
  getData();
  }


  void saved() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    isLightOn = !isLightOn;
    await sharedPreferences.setBool('isLLighOn', isLightOn);

    notifyListeners();
  }

  void getData() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
     isLightOn =await sharedPreferences.getBool('isLLighOn') ?? false;
    notifyListeners();
  }
}

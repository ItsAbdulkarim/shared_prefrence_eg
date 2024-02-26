import 'package:flutter/foundation.dart';

class ProviderWithOutShareP extends ChangeNotifier{

  bool isLightONn=false;
  void isLightONorOFF(){
    isLightONn=!isLightONn;
    notifyListeners();

  }







}
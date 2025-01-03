// import 'package:ecommoerceapp/themes/lightmode.dart';
// import 'package:flutter/material.dart';
// class Themeprovider with ChangeNotifier{
//   ThemeData _themedata=lightmode;
//   ThemeData get themedata =>_themedata;
//   set themeData(ThemeData themeData){
//     _themedata=themeData;
//     notifyListeners()
// ;  }
// void toggletheme(){
//   if(_themedata==lightmode){
//     themeData=darkmode;
//   }else{
//     themeData=lightmode;
//   }
// }
// }
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  ThemeMode get themeMode => _isDarkMode ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}

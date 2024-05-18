import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeManager with ChangeNotifier {

  // ThemeMode _themeMode = ThemeMode.light;
  // get themeMode => _themeMode;
  bool _isDark=false;
  bool get isDark=>_isDark;
  toogleTheme() {
    // _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    _isDark= !isDark;
    notifyListeners();
  }
  init() async {
    var storage= await SharedPreferences.getInstance();
    _isDark =storage.getBool("isDark")??false; 
    notifyListeners();
  }
}


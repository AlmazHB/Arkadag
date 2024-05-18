
import 'package:flutter/material.dart';



class LocaleManager extends ChangeNotifier {
  Locale _currentLocale =  const Locale.fromSubtags(languageCode: 'tk'); 

  Locale get currentLocale => _currentLocale;

  void setLocale(Locale newLocale) {
    if (_currentLocale != newLocale) {
      _currentLocale = newLocale;
      notifyListeners();
    }
  }
}
import 'package:flutter/material.dart';
import 'package:yemeni_jops/core/theme/dark_mode.dart';

import 'package:yemeni_jops/core/theme/light-mode.dart';

class ThemeProviderVm extends ChangeNotifier {
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      _themeData = darkMode;
    } else {
      _themeData = lightMode;
    }
    notifyListeners();
  }
}

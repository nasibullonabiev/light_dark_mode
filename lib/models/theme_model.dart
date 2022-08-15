import 'package:flutter/cupertino.dart';
import 'package:light_dark_mode/services/theme_shared_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeModel extends ChangeNotifier{
  late bool _isDark;
  late ThemeShared themeSharedPreferences;
  bool get isDark => _isDark;


  ThemeModel(){
    _isDark = false;
    themeSharedPreferences = ThemeShared();
    getThemePreferences();
  }

  set isDark(bool value){
    _isDark = value;
    themeSharedPreferences.setTheme(value);
    notifyListeners();

  }

  getThemePreferences()async{
    _isDark = await themeSharedPreferences.getTheme();
    notifyListeners();

  }
}
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

typedef DarkModeState(bool state);

class DarkModeModel extends ChangeNotifier {
  DarkModeModel() {
    _setInitValue();
  }

  final _darkModeSettingsKey = "is_dark_mode_on";

  bool _isDarkModeOn = true;

  bool get isDarkModeOn => _isDarkModeOn;

  void _setInitValue() {
    SharedPreferences.getInstance().then((prefs) {
      _isDarkModeOn = prefs.getBool(_darkModeSettingsKey) ?? false;
      notifyListeners();
    });
  }

  setDarkMode(bool isDarkModeOn) async {
    _isDarkModeOn = isDarkModeOn;
    var prefs = await SharedPreferences.getInstance();
    prefs.setBool(_darkModeSettingsKey, isDarkModeOn);
    notifyListeners();
  }
}

class DarkModeSelector {
  bool isDarkModeOn;
  DarkModeState darkModeState;

  DarkModeSelector(this.isDarkModeOn, this.darkModeState);
}

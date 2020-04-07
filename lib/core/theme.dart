import 'package:flutter/material.dart';
import 'package:sales_academy/core/colors.dart';

class AppTheme {
  //
  AppTheme._();

  static final _defaultTextColorLight = LRColor.green[500];
  static final _themeDataLight = ThemeData.light();
  static final _buttonThemeLight = _themeDataLight.buttonTheme;

  static final _defaultTextColorDark = Colors.white70;
  static final _themeDataDark = ThemeData.dark();
  static final _buttonThemeDark = _themeDataDark.buttonTheme;

  static final ThemeData lightTheme = _themeDataLight.copyWith(
    scaffoldBackgroundColor: LRColor.green[50],
    appBarTheme: AppBarTheme(
      color: LRColor.green,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    iconTheme: IconThemeData(
      color: Colors.white54,
    ),
    buttonTheme: _buttonThemeLight.copyWith(
      buttonColor: LRColor.green,
      textTheme: ButtonTextTheme.accent,
      colorScheme:
          _buttonThemeLight.colorScheme.copyWith(secondary: Colors.white),
    ),
    primaryColor: _defaultTextColorLight,
    cursorColor: _defaultTextColorLight,
    toggleableActiveColor: _defaultTextColorLight,
    textSelectionHandleColor: _defaultTextColorLight,
    textTheme: TextTheme(
      bodyText1: TextStyle(color: _defaultTextColorLight),
      bodyText2: TextStyle(color: _defaultTextColorLight),
      headline1: TextStyle(fontWeight: FontWeight.bold),
      subtitle1: TextStyle(color: _defaultTextColorLight),
    ),
  );

  static final ThemeData darkTheme = _themeDataDark.copyWith(
    appBarTheme: AppBarTheme(
      color: Colors.white24,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    cardTheme: CardTheme(color: Colors.white24),
    buttonTheme: _buttonThemeDark.copyWith(
      buttonColor: LRColor.green,
      textTheme: ButtonTextTheme.accent,
      colorScheme:
          _buttonThemeDark.colorScheme.copyWith(secondary: Colors.white),
    ),
    iconTheme: IconThemeData(
      color: Colors.white54,
    ),
    primaryColor: _defaultTextColorDark,
    cursorColor: _defaultTextColorDark,
    unselectedWidgetColor: _defaultTextColorDark,
    toggleableActiveColor: LRColor.green,
    textTheme: TextTheme(
      bodyText1: TextStyle(color: _defaultTextColorDark),
      headline1: TextStyle(fontWeight: FontWeight.bold),
      subtitle1: TextStyle(color: _defaultTextColorDark),
    ),
  );
}

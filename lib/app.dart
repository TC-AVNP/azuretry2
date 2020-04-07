import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sales_academy/core/routes.dart';
import 'package:sales_academy/core/theme.dart';
import 'package:sales_academy/models/authentication.dart';
import 'package:sales_academy/models/dark_mode.dart';
import 'package:sales_academy/screens/home_screen.dart';
import 'package:sales_academy/screens/login.dart';

class LRApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthenticationModel()),
        ChangeNotifierProvider(create: (_) => DarkModeModel()),
      ],
      child: Selector<DarkModeModel, bool>(
          selector: (context, model) => model.isDarkModeOn,
          builder: (context, isDarkModeOn, _) {
            return MaterialApp(
              title: 'LR Not Sales Academy',
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
              routes: {
                Routes.login: (context) => Login(),
                Routes.home: (context) => HomeScreen(),
              },
              initialRoute: Routes.home,
            );
          }),
    );
  }
}

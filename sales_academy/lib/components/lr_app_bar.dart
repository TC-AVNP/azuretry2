import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sales_academy/models/dark_mode.dart';

/// global application bar
class LrAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size(double.infinity, 57.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('LR Academy'),
      actions: <Widget>[
        Selector<DarkModeModel, DarkModeSelector>(
            selector: (context, model) =>
                DarkModeSelector(model.isDarkModeOn, model.setDarkMode),
            builder: (context, selector, _) {
              return IconButton(
                icon: Icon(selector.isDarkModeOn
                    ? Icons.wb_sunny
                    : Icons.brightness_3),
                onPressed: () {
                  selector.isDarkModeOn
                      ? selector.darkModeState(false)
                      : selector.darkModeState(true);
                },
              );
            }),
      ],
    );
  }
}

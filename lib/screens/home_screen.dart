import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sales_academy/components/lr_app_bar.dart';
import 'package:sales_academy/core/routes.dart';
import 'package:sales_academy/models/authentication.dart';

class LoginButtonSelector {
  bool isAuthenticated;
  UpdateLoginState updateLoginState;

  LoginButtonSelector(this.isAuthenticated, this.updateLoginState);
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LrAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to the LR Sales Academy',
            ),
            Selector<AuthenticationModel, LoginButtonSelector>(
              selector: (context, model) => LoginButtonSelector(
                  model.isAuthenticated, model.authenticate),
              builder: (context, selector, _) {
                return OutlineButton(
                  onPressed: () {
                    // FIXME(GR): This is meant as an example of updating state and has no logical meaning. Must be moved into the Login screen.
                    if (selector.isAuthenticated) {
                      selector.updateLoginState(false);
                    } else {
                      selector.updateLoginState(true);
                    }
                    Navigator.pushNamed(context, Routes.login);
                  },
                  child: Text(selector.isAuthenticated ? "Logout" : "Login"),
                );
              },
            ),
            Selector<AuthenticationModel, bool>(
              selector: (context, model) => model.isAuthenticated,
              builder: (context, isAuthenticated, _) {
                return Text(isAuthenticated
                    ? "You have been succefully authenticated."
                    : "Please login into your account.");
              },
            ),
          ],
        ),
      ),
    );
  }
}

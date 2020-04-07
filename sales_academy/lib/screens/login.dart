import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sales_academy/components/lr_labeled_checkbox.dart';
import 'package:sales_academy/components/lr_app_bar.dart';
import 'package:sales_academy/components/lr_centered_card.dart';
import 'package:sales_academy/components/lr_padding.dart';
import 'package:sales_academy/components/lr_raised_button.dart';
import 'package:sales_academy/components/lr_svg.dart';
import 'package:sales_academy/components/lr_text_form_field.dart';
import 'package:sales_academy/core/layout.dart';
import 'package:sales_academy/core/routes.dart';
import 'package:sales_academy/core/validators.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LrAppBar(),
      body: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  // controllers for the form inputs
  TextEditingController _usernameController;
  TextEditingController _passwordController;
  final FocusNode _usernameFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    void _submitForm() {
      if (_formKey.currentState.validate()) {
        Navigator.pushNamed(context, Routes.home);
      } else {
        _usernameFocus.requestFocus();
      }
    }

    return SingleChildScrollView(
      child: LrCenteredCard(
        child: LrPadding(
          padding: EdgeInsets.symmetric(vertical: LRPadding.dialog),
          child: Form(
            key: _formKey,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  LrSvg(
                    svg: 'LR-logo.svg',
                    width: 100,
                    height: 100,
                  ),
                  vSpace(LRPadding.vGrid * 3),
                  LrPadding.dialogHorizontal(
                      child: LrTextFormField(
                    key: Key('LOGIN_INPUT_EMAIL'),
                    label: 'Email',
                    focusNode: _usernameFocus,
                    controller: _usernameController,
                    validator: validateEmail,
                    onFieldSubmitted: (term) {
                      FocusScope.of(context).nextFocus();
                    },
                  )),
                  vSpace(LRPadding.vGrid),
                  LrPadding.dialogHorizontal(
                      child: LrTextFormField(
                    key: Key('LOGIN_INPUT_PASSWORD'),
                    label: 'Password',
                    textInputAction: TextInputAction.done,
                    focusNode: _passwordFocus,
                    controller: _passwordController,
                    obscureText: true,
                    validator: (value) => validateLength(value, 5),
                    onFieldSubmitted: (value) {
                      FocusScope.of(context).unfocus();
                      _submitForm();
                    },
                  )),
                  vSpace(LRPadding.vGrid),
                  LrPadding(
                      padding: EdgeInsets.symmetric(
                          horizontal: LRPadding.dialog - 10),
                      child: LrLabeledCheckbox(
                        key: Key('LOGIN_CHECKBOX_KEEP_ME_LOGGED_IN'),
                        label: 'Keep me logged in',
                        isSelected: true,
                      )),
                  vSpace(LRPadding.vGrid * 2),
                  LrPadding.dialogHorizontal(
                    child: LrRaisedButton(
                      label: 'Login',
                      onPressed: () {
                        _submitForm();
                      },
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

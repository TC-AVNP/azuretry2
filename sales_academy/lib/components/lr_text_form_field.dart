import 'package:flutter/material.dart';

/// a LR material style text input field
class LrTextFormField extends StatelessWidget {
  /// constructor for the text input field
  const LrTextFormField(
      {@required this.label,
      this.textInputAction,
      this.focusNode,
      this.controller,
      this.validator,
      this.onFieldSubmitted,
      this.obscureText,
      Key key})
      : super(key: key);

  /// label of the text field
  final String label;

  /// what happens when the user submits this field
  final TextInputAction textInputAction;

  /// focus node
  final FocusNode focusNode;

  /// controller
  final TextEditingController controller;

  /// validator for checking the input value on blur
  final Function(String) validator;

  /// callback when the user hit "next" on the keyboard
  final Function(String) onFieldSubmitted;

  /// obscure the text (e.g. for a password field)
  final bool obscureText;

  @override
  Widget build(BuildContext context) => TextFormField(
        textInputAction: textInputAction ?? TextInputAction.next,
        focusNode: focusNode,
        controller: controller,
        cursorColor: Theme.of(context).cursorColor,
        decoration: InputDecoration(
          labelText: label,
        ),
        validator: validator,
        obscureText: obscureText ?? false,
        onFieldSubmitted: (_) {
          onFieldSubmitted ?? FocusScope.of(context).nextFocus();
        },
      );
}

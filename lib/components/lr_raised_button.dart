import 'package:flutter/material.dart';
import 'package:sales_academy/core/layout.dart';

/// creates a raised button
class LrRaisedButton extends StatelessWidget {
  /// constructor for a normal button
  const LrRaisedButton(
      {@required this.label, @required this.onPressed, Key key})
      : super(key: key);

  /// text on the button
  final String label;

  /// what happens if the button is pressed
  final onPressed;

  @override
  Widget build(BuildContext context) => RaisedButton(
        child: Text(label),
        onPressed: onPressed,
      );
}

import 'package:flutter/material.dart';

/// Contains padding for different usages
class LRPadding {
  /// page padding
  static double page = 20.0;

  /// grid padding
  static double grid = 16.0;

  /// grid padding vertical
  static double vGrid = 16.0;

  /// grid padding horizontal
  static double hGrid = 8.0;

  /// inner padding for dialogs
  static double dialog = 32.0;
}

/// Adds some horizontal spacing between Widgets. Normally used inside a Column
Widget hSpace(double spacing) =>
    Padding(padding: EdgeInsets.only(right: spacing));

/// Adds some vertical spacing between Widgets. Normally used in inside a Row
Widget vSpace(double spacing) =>
    Padding(padding: EdgeInsets.only(top: spacing));

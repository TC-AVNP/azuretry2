import 'package:flutter/material.dart';

/// A simple TestApp that displays one given widget
class TestApp extends StatelessWidget {
  /// Create a new TestApp that displays the given widget
  const TestApp(this.widget);

  /// widget to display in the test
  final Widget widget;

  @override
  Widget build(BuildContext context) =>
      MaterialApp(home: Scaffold(body: widget));
}

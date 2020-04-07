import 'package:flutter/material.dart';
import 'package:sales_academy/core/layout.dart';

/// creates a padding around a widget
class LrPadding extends StatelessWidget {
  /// constructor
  const LrPadding({@required this.child, @required this.padding, Key key})
      : super(key: key);

  /// use this constructor to create a standard page padding on all edges
  LrPadding.page({Widget child})
      : this(padding: EdgeInsets.all(LRPadding.page), child: child);

  /// use this constructor to create a standard dialog padding on all edges
  LrPadding.dialog({Widget child})
      : this(padding: EdgeInsets.all(LRPadding.dialog), child: child);

  /// use this constructor to create a only horizontal dialog padding
  LrPadding.dialogHorizontal({Widget child})
      : this(
            padding: EdgeInsets.symmetric(horizontal: LRPadding.dialog),
            child: child);

  /// padding to apply
  final EdgeInsets padding;

  /// child
  final Widget child;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding,
        child: child,
      );
}

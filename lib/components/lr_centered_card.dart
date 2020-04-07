import 'package:flutter/material.dart';
import 'package:sales_academy/core/layout.dart';

/// creates a card centered on the page (e.g. for login)
class LrCenteredCard extends StatelessWidget {
  /// constructor
  const LrCenteredCard({@required this.child, Key key}) : super(key: key);

  /// content to display on the page card
  final Widget child;

  @override
  Widget build(BuildContext context) => Center(
      child: Padding(
          padding: EdgeInsets.only(
              top: LRPadding.page * 2,
              left: LRPadding.page * 2,
              right: LRPadding.page * 2,
              bottom: LRPadding.page),
          child: Card(child: child)));
}

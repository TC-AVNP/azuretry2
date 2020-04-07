import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// renders a svg image with given height and width
class LrSvg extends StatelessWidget {
  /// constructor
  const LrSvg(
      {@required this.svg,
      @required this.width,
      @required this.height,
      Key key})
      : super(key: key);

  /// svg to display
  final String svg;

  /// height of the svg
  final double height;

  /// width of the svg
  final double width;

  @override
  Widget build(BuildContext context) => SvgPicture.asset(
        'assets/svg/$svg',
        width: width,
        height: height,
      );
}

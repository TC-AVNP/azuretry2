import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sales_academy/components/lr_svg.dart';

import '../../utils/test_app.dart';

void main() {
  group('components/LrSvg', () {
    testWidgets('Renderes a given svg image', (WidgetTester tester) async {
      // given
      const image = 'LR-logo.svg';
      // when
      await tester
          .pumpWidget(TestApp(LrSvg(svg: image, height: 100, width: 100)));
      // then
      expect(find.byType(SvgPicture), findsOneWidget);
    });
  });
}

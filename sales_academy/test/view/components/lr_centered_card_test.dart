import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sales_academy/components/lr_centered_card.dart';

import '../../utils/test_app.dart';

void main() {
  group('components/LrCenteredCard', () {
    testWidgets('Renderes a centered card widget with a widget in it',
        (WidgetTester tester) async {
      // given
      const key = Key('test_container');
      Widget pageContent = Container(key: key);
      // when
      await tester.pumpWidget(TestApp(LrCenteredCard(child: pageContent)));
      // then
      expect(find.byType(LrCenteredCard), findsOneWidget);
      expect(find.byKey(key), findsOneWidget);
    });
  });
}

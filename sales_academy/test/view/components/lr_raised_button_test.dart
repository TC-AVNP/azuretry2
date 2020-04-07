import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sales_academy/components/lr_raised_button.dart';

import '../../utils/test_app.dart';

void main() {
  group('components/LrRaisedButton', () {
    testWidgets('Renderes a raised button', (WidgetTester tester) async {
      // given
      final label = 'OK';
      // when
      await tester.pumpWidget(TestApp(LrRaisedButton(
        label: label,
        onPressed: () {},
      )));
      // then
      expect(find.byType(RaisedButton), findsOneWidget);
      expect(find.text(label), findsOneWidget);
    });

    testWidgets('executes onPressed if button is clicked',
        (WidgetTester tester) async {
      // given
      final label = 'OK';
      final key = Key('RAISED_BUTTON_OK');
      var pressed = false;
      // when
      await tester.pumpWidget(TestApp(LrRaisedButton(
        key: key,
        label: label,
        onPressed: () {
          pressed = true;
        },
      )));
      await tester.tap(find.byKey(key));
      // then
      expect(pressed, true);
    });
  });
}

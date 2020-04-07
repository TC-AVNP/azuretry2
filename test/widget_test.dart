import 'package:flutter_test/flutter_test.dart';
import 'package:sales_academy/app.dart';

void main() {
  testWidgets('renders the app container', (WidgetTester tester) async {
    await tester.pumpWidget(LRApp());
    expect(find.byType(LRApp), findsOneWidget);
  });
}

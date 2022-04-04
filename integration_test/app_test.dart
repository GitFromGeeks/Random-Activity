import 'package:flutter/material.dart';
import 'package:random_activity/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets("app test", (WidgetTester tester) async {
    //setup
    app.main();
    await tester.pumpAndSettle();
    final Finder btn = find.byIcon(Icons.flash_on_outlined);
    tester.tap(btn);
    Future.delayed(const Duration(seconds: 1));
    await tester.pumpAndSettle();
    expect(find.text("The Boring App"), findsOneWidget);
  });
}

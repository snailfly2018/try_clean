import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:try_clean/main.dart' as app;
import 'package:try_clean/presentation/pages/number_trivia_page.dart';
import 'package:flutter/material.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('app integration test', () {
    testWidgets('description', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      expect(find.byType(NumberTriviaPage), findsOneWidget);
      expect(find.text('Start searching!'), findsOneWidget);

      var textinput = find.byType(TextField);
      expect(textinput, findsOneWidget);
      await tester.enterText(textinput, '0');
      await tester.pumpAndSettle();
      await tester.tap(find.text('Search'));
      await tester.pumpAndSettle();
      await tester.pump(const Duration(seconds: 1));

      expect(find.text('must be large than zero'), findsOneWidget);
    });
  });
}

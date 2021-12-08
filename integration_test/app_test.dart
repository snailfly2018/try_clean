import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:try_clean/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('app integration test', () {
    testWidgets('description', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      expect(find.text('Number Trivia'), findsOneWidget);
    });
  });
}

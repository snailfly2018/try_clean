import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:try_clean/presentation/widgets/message_display.dart';

void main() {
  testWidgets('message display ...', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: MessageDisplay(message: 'hi'),
    ));
    final text = find.text('hi');
    expect(text, findsOneWidget);
  });

  //todo study golden file test
}

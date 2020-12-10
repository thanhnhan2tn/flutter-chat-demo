import 'package:flutter_app/pages/ConversationPageList.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_app/main.dart';

void main() {
  testWidgets('Main UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(Messio());

    expect(find.byType(ConversationPageList), findsOneWidget);
  });
}

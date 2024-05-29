import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:to_do_list/main.dart';

void main() {
  testWidgets('Add task test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the initial list is empty.
    expect(find.byType(ListTile), findsNothing);

    // Enter 'New Task' into the TextField.
    await tester.enterText(find.byType(TextField), 'New Task');
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that the new task is added to the list.
    expect(find.byType(ListTile), findsOneWidget);
    expect(find.text('New Task'), findsOneWidget);
  });
}

import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:test/main.dart';

void main() {
  testWidgets('Navigation shows second screen', (tester) async {
    // If you remove this block you will see the output screen as you want
    tester.view.physicalSize = const Size(400, 800);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);
    // ---------------------------------------------------------------------

    await tester.pumpWidget(const MyApp());

    // Confirm on Home screen
    expect(find.text('Go to Second Screen'), findsOneWidget);

    // Tap button
    await tester.tap(find.text('Go to Second Screen'));
    await tester.pumpAndSettle();

    // Confirm on Second screen
    expect(find.text('Hello from Second Screen'), findsOneWidget);
  });
}

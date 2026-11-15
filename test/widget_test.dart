import 'package:flutter/material.dart';
import 'package:flutter_9/di/di.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_9/main.dart';
import 'package:flutter_9/pages/loading_page.dart';
import 'package:flutter_9/pages/login_page.dart';

void main() {
  setUpAll(setupDI);
  testWidgets('Shows the login page after loading', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byType(LoadingPage), findsOneWidget);

    await tester.pump(const Duration(seconds: 4));
    await tester.pumpAndSettle();

    expect(find.byType(LoginPage), findsOneWidget);

    await tester.tap(find.byTooltip('Тёмная тема'));
    await tester.pumpAndSettle();
    expect(
      Theme.of(tester.element(find.byType(LoginPage))).brightness,
      Brightness.dark,
    );

    await tester.tap(find.byTooltip('Светлая тема'));
    await tester.pumpAndSettle();
    expect(
      Theme.of(tester.element(find.byType(LoginPage))).brightness,
      Brightness.light,
    );
  });
}

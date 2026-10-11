// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:gumisasak/main.dart';

void main() {
  test('URL aplikasi menunjuk ke domain yang benar', () {
    expect(kAppUrl, 'https://gumisasak.com');
  });

  testWidgets('ErrorView menampilkan pesan dan tombol coba lagi',
      (WidgetTester tester) async {
    var retried = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ErrorView(onRetry: () => retried = true),
        ),
      ),
    );

    expect(find.text('Tidak dapat memuat halaman'), findsOneWidget);
    expect(find.text('Coba Lagi'), findsOneWidget);

    await tester.tap(find.text('Coba Lagi'));
    expect(retried, isTrue);
  });
}

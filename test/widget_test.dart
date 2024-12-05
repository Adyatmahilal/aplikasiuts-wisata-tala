import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aplikasiuts/detail_page.dart';

void main() {
  testWidgets('DetailPage shows image, title and description', (WidgetTester tester) async {
    // Create a sample place data
    final Map<String, String> samplePlace = {
      'title': 'Pantai Batakan Baru',
      'image': 'assets/BatakanBaru.jpg'
    };

    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: DetailPage(),
        routes: {
          '/detail': (context) => DetailPage(),
        },
        initialRoute: '/detail',
        onGenerateRoute: (settings) {
          if (settings.name == '/detail') {
            return MaterialPageRoute(
              builder: (context) => DetailPage(),
              settings: RouteSettings(arguments: samplePlace),
            );
          }
          return null;
        },
      ),
    );

    // Verify that the image is displayed
    expect(find.byType(Image), findsOneWidget);

    // Verify that the title is displayed
    expect(find.text('Pantai Batakan Baru'), findsOneWidget);

    // Verify that the description is displayed
    expect(find.text('Pantai ini terkenal dengan pasir putihnya yang lembut dan ombak yang tenang, menjadikannya tempat yang ideal untuk berenang dan bersantai.'), findsOneWidget);
  });
}

import 'package:flutter/material.dart';
import 'login_page.dart';
import 'list_page.dart';
import 'detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Tanah Laut',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/list': (context) => ListPage(),
        '/detail': (context) => DetailPage(),
      },
    );
  }
}

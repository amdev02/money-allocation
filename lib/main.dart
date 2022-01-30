import 'package:flutter/material.dart';
import 'package:money_allocations/pages/home_page.dart';
import 'package:money_allocations/pages/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Money Allocations',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      routes: {
        '/': (context) => MainPage(),
      },
    );
  }
}

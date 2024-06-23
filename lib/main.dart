import 'package:flutter/material.dart';

import './pages/counter_page.dart';
import './pages/Other_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
      routes: {
        CounterPage.routeName: (ctx) => CounterPage(),
        OtherPage.routeName: (ctx) => OtherPage(),
      },
    );
  }
}

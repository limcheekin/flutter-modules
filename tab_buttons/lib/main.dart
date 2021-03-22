import 'package:flutter/material.dart';

import 'tab_buttons_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab Buttons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabButtonsScreen(),
    );
  }
}

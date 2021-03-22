import 'package:flutter/material.dart';

import 'nested_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nested List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NestedListScreen(),
    );
  }
}

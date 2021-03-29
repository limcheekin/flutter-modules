import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'app.locator.dart';
import 'app.router.dart';
import 'string.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Explorer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}

class HomeScreen extends StatelessWidget {
  final _nagivationService = locator<NavigationService>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widgets'),
      ),
      body: ListView.builder(
        itemCount: Routes.all.length - 1,
        itemBuilder: (BuildContext context, int position) {
          final routeName = Routes.all.elementAt(position + 1);
          return Card(
            margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
            child: ListTile(
              title: Text(routeName.substring(1).toTitleCase()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () => _nagivationService.navigateTo(routeName),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nested_list/nested_list_screen.dart';
import 'package:showcase/showcase_screen.dart';
import 'package:tab_buttons/tab_buttons_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'string.dart';

final AppModule appModule = AppModule();
void main() => runApp(ModularApp(module: appModule, child: AppWidget()));

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    // ChildRoute(Modular.initialRoute, child: (context, args) => HomeScreen()),
    ChildRoute('/', child: (_, __) => HomeScreen()),
    ChildRoute('/nested_list', child: (_, __) => NestedListScreen()),
    ChildRoute('/tab_buttons', child: (_, __) => TabButtonsScreen()),
    ChildRoute('/showcase', child: (_, __) => ShowcaseScreen()),
  ];
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Explorer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    ).modular();
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widgets'),
      ),
      body: ListView.builder(
        itemCount: appModule.routes.length - 1,
        itemBuilder: (BuildContext context, int position) {
          final route = appModule.routes[position + 1];
          return Card(
            margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
            child: ListTile(
              title: Text(route.routerName.substring(1).toTitleCase()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () => Modular.to.navigate(route.routerName),
            ),
          );
        },
      ),
    );
  }
}

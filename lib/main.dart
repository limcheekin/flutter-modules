import 'package:flutter/material.dart';
import 'package:nested_list/nested_list_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';
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
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => NarrowLayout(),
      tablet: (BuildContext context) => NarrowLayout(),
      desktop: (BuildContext context) => WideLayout(),
    );
  }
}

class NarrowLayout extends StatelessWidget {
  const NarrowLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widgets'),
      ),
      body: ListView.builder(
        itemCount: appModule.routes.length - 1,
        itemBuilder: (BuildContext context, int index) {
          final routerName = appModule.routes[index + 1].routerName;
          return Card(
            margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
            child: ListTile(
              title: Text(routerName.substring(1).toTitleCase()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () => Modular.to.navigate(routerName),
            ),
          );
        },
      ),
    );
  }
}

class WideLayout extends StatefulWidget {
  const WideLayout({Key key}) : super(key: key);

  @override
  _WideLayoutState createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {
  int _selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widgets'),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: appModule.routes.length - 1,
              itemBuilder: (BuildContext context, int index) {
                final routerName = appModule.routes[index + 1].routerName;
                return ListTile(
                  title: Text(routerName.substring(1).toTitleCase()),
                  selected: index == _selectedIndex,
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                );
              },
            ),
          ),
          Expanded(
            flex: 7,
            child: _selectedIndex == -1
                ? Center(
                    child:
                        Text('Select the showcase you interested on the left'),
                  )
                : appModule.routes[_selectedIndex + 1].child(context, null),
          ),
        ],
      ),
    );
  }
}

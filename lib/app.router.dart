// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:nested_list/nested_list_screen.dart';
import 'package:showcase/showcase_screen.dart';
import 'package:stacked/stacked.dart';
import 'package:tab_buttons/tab_buttons_screen.dart';

import 'main.dart';

class Routes {
  static const String homeScreen = '/';
  static const String nestedListScreen = '/nested_list';
  static const String tabButtonsScreen = '/tab_buttons';
  static const String showcaseScreen = '/showcase';
  static const all = <String>{
    homeScreen,
    nestedListScreen,
    tabButtonsScreen,
    showcaseScreen,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.nestedListScreen, page: NestedListScreen),
    RouteDef(Routes.tabButtonsScreen, page: TabButtonsScreen),
    RouteDef(Routes.showcaseScreen, page: ShowcaseScreen),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeScreen(),
        settings: data,
      );
    },
    NestedListScreen: (data) {
      var args = data.getArgs<NestedListScreenArguments>(
        orElse: () => NestedListScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => NestedListScreen(key: args.key),
        settings: data,
      );
    },
    TabButtonsScreen: (data) {
      var args = data.getArgs<TabButtonsScreenArguments>(
        orElse: () => TabButtonsScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => TabButtonsScreen(key: args.key),
        settings: data,
      );
    },
    ShowcaseScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ShowcaseScreen(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// NestedListScreen arguments holder class
class NestedListScreenArguments {
  final Key key;
  NestedListScreenArguments({this.key});
}

/// TabButtonsScreen arguments holder class
class TabButtonsScreenArguments {
  final Key key;
  TabButtonsScreenArguments({this.key});
}

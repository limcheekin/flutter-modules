import 'package:nested_list/nested_list_screen.dart';
import 'package:showcase/showcase_screen.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tab_buttons/tab_buttons_screen.dart';

import 'main.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeScreen, initial: true),
    MaterialRoute(
      page: NestedListScreen,
      path: '/nested_list',
    ),
    MaterialRoute(
      page: TabButtonsScreen,
      path: '/tab_buttons',
    ),
    MaterialRoute(
      page: ShowcaseScreen,
      path: '/showcase',
    ),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class App {
  /** Serves no purpose besides having an annotation attached to it */
}

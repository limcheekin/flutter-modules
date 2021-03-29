import 'package:flutter/material.dart';
import 'responsive_showcase.dart';

class ShowcaseScreen extends StatelessWidget {
  static const owner = 'limcheekin';
  static const repository = 'flutter-widgets-explorer';
  static const branch = 'showcase';

  const ShowcaseScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveShowcase(
      title: 'Showcase',
      owner: owner,
      repository: repository,
      ref: branch,
      widget: Center(
        child: Text('This is your widget.'),
      ),
      readMe: 'showcase/README.md',
      codePaths: [
        'showcase/pubspec.yaml',
        'showcase/lib/main.dart',
        'common_ui/lib/my_module.dart',
        'showcase/lib/showcase_screen.dart',
        'showcase/lib/showcase.dart',
        'showcase/lib/read_me_view.dart',
        'showcase/lib/license_view.dart',
      ],
      additionalTabs: [
        Tab(text: 'Car'),
        Tab(text: 'Transit'),
        Tab(text: 'Bike'),
      ],
      additionalTabBarViews: [
        Icon(Icons.directions_car),
        Icon(Icons.directions_transit),
        Icon(Icons.directions_bike),
      ],
    );
  }
}

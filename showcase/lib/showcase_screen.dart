import 'package:flutter/material.dart';

import 'showcase.dart';

class ShowcaseScreen extends StatelessWidget {
  static const owner = 'limcheekin';
  static const repository = 'flutter-widgets-explorer';
  static const branch = 'source_code_view';

  const ShowcaseScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Showcase'),
      ),
      body: Showcase(
        widget: Center(
          child: Text('This is center text.'),
        ),
        owner: owner,
        repository: repository,
        ref: branch,
        readMe: 'lib/source_code_view/README.md',
        codePaths: [
          'lib/source_code_view/multiple_requests_http_client.dart',
        ],
        showDependencies: [
          'http',
          'animate_icons',
          'flutter_syntax_view',
          'shimmer',
          'url_launcher',
          'pubspec_parse',
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:showcase/license_view.dart';
import 'package:showcase/read_me_view.dart';
import 'package:source_code_view/multiple_requests_http_client.dart';
import 'package:source_code_view/source_code_view.dart';

class Showcase extends StatelessWidget {
  final Widget widget;
  final String owner;
  final String repository;
  final String ref;
  final String readMe;
  final String license;
  final List<String> codePaths;
  final bool isShowDependencies;
  final List<String> showDependencies;
  final MultipleRequestsHttpClient client;

  const Showcase({
    @required this.widget,
    @required this.owner,
    @required this.repository,
    @required this.ref,
    this.readMe = 'README.md',
    this.license = 'LICENSE',
    this.codePaths,
    this.isShowDependencies = true,
    this.showDependencies,
    this.client,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(children: [
        TabBar(
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black,
          tabs: [
            Tab(
              text: 'Showcase',
            ),
            Tab(
              text: 'Read Me',
            ),
            Tab(
              text: 'Code',
            ),
            Tab(
              text: 'License',
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            children: [
              this.widget,
              ReadMeView(
                owner: owner,
                repository: repository,
                ref: ref,
                path: this.readMe,
              ),
              SingleChildScrollView(
                child: SourceCodeView(
                  owner: owner,
                  repository: repository,
                  ref: ref,
                  paths: codePaths,
                  showDependencies: this.showDependencies,
                ),
              ),
              SingleChildScrollView(
                child: LicenseView(
                  owner: owner,
                  repository: repository,
                  ref: ref,
                  path: this.license,
                  // client: httpClient,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

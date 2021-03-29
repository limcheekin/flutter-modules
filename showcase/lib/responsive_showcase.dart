import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'showcase.dart';

class ResponsiveShowcase extends StatelessWidget {
  final String owner;
  final String repository;
  final String ref;
  final Widget widget;
  final String title;
  final String readMe;
  final String license;
  final List<String> codePaths;
  final bool showReadMe;
  final bool showCode;
  final bool showLicense;
  final List<Widget> additionalTabs;
  final List<Widget> additionalTabBarViews;

  const ResponsiveShowcase({
    @required this.owner,
    @required this.repository,
    @required this.ref,
    @required this.widget,
    @required this.title,
    this.readMe = 'README.md',
    this.license = 'LICENSE',
    this.codePaths,
    this.showReadMe = true,
    this.showCode = true,
    this.showLicense = true,
    this.additionalTabs,
    this.additionalTabBarViews,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getValueForScreenType<bool>(
        context: context,
        mobile: true,
        tablet: false,
      )
          ? AppBar(
              title: Text(this.title),
            )
          : null,
      body: Showcase(
        widget: this.widget,
        owner: this.owner,
        repository: this.repository,
        ref: this.ref,
        readMe: this.readMe,
        license: this.license,
        codePaths: this.codePaths,
        showReadMe: this.showReadMe,
        showCode: this.showCode,
        showLicense: this.showLicense,
        additionalTabs: this.additionalTabs,
        additionalTabBarViews: this.additionalTabBarViews,
      ),
    );
  }
}

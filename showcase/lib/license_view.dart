import 'package:flutter/material.dart';
import 'package:source_code_view/abstract_github_view.dart';
import 'package:source_code_view/multiple_requests_http_client.dart';

class LicenseView extends AbstractGithubView {
  const LicenseView({
    @required String owner,
    @required String repository,
    @required String ref,
    @required String path,
    MultipleRequestsHttpClient client,
    Key key,
  }) : super(
          owner: owner,
          repository: repository,
          ref: ref,
          path: path,
          client: client,
          hasCopyButton: false,
          key: key,
        );

  @override
  Widget buildWidget(BuildContext context, String responseBody) {
    return Text(responseBody);
  }
}

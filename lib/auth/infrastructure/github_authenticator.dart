// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/services.dart';
import 'package:oauth2/oauth2.dart';

import 'package:repo_viewer/auth/infrastructure/credentials_storage/credentials_storage.dart';

class GithubAuthenticator {
  final CredentialsStorage _credentialsStorage;

  GithubAuthenticator(this._credentialsStorage);

  static const clientId = 'Ov23ct7mqD41IrZbosKN';
  static const clientSecret = '5575e107224a88a1db3420469d845a197d62c7ee';
  static const scopes = ['read:user','repo'];

  static final authorizationEndpoint = Uri.parse('https://github.com/login/oauth/authorize');

  static final tokenEndpoint = Uri.parse('https://github.com/login/oauth/access_token');

  static final redirectUrl = Uri.parse('http://localhost:3000/callback');

  Future<Credentials?> getSignedInCredentials() async {
    try {
      final storedCredentials = await _credentialsStorage.read();

      if (storedCredentials != null) {
        if (storedCredentials.canRefresh && storedCredentials.isExpired) {
          // TODO: refresh
        }
      }

      return storedCredentials;
    } on PlatformException {
      return null;
    }
  }

  Future<bool> isSignedIn() =>
      getSignedInCredentials().then((credentials) => credentials != null);
}

import 'package:client_sdk_dart/client_sdk_dart.dart';
import 'package:client_sdk_dart/src/auth/credential_provider.dart';
import 'package:test/test.dart';

void main() {
  group('credential_provider', () {
    setUp(() {
      // Additional setup goes here.
    });

    group("CredentialProvider.fromString", () => {
      test('Test reading credentials from a string', () => {
        CredentialProvider.fromString("")
      })
    });
  });
}

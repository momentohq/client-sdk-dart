import 'package:momento/src/auth/credential_provider.dart';
import 'package:momento/src/errors/errors.dart';
import 'package:test/test.dart';
import 'dart:convert';

// These tokens have valid syntax, but they don't actually have valid credentials.  Just used for unit testing.
var fakeTestLegacyToken =
    'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJmb29Abm90LmEuZG9tYWluIiwiY3AiOiJjb250cm9sLXBsYW5lLWVuZHBvaW50Lm5vdC5hLmRvbWFpbiIsImMiOiJjYWNoZS1lbmRwb2ludC5ub3QuYS5kb21haW4ifQo.rtxfu4miBHQ1uptWJ2x3UiAwwJYcMeYIkkpXxUno_wIavg4h6YJStcbxk32NDBbmJkJS7mUw6MsvJNWaxfdPOw';
var fakeTestV1ApiKey =
    'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJPbmxpbmUgSldUIEJ1aWxkZXIiLCJpYXQiOjE2NzgzMDU4MTIsImV4cCI6NDg2NTUxNTQxMiwiYXVkIjoiIiwic3ViIjoianJvY2tldEBleGFtcGxlLmNvbSJ9.8Iy8q84Lsr-D3YCo_HP4d-xjHdT8UCIuvAYcxhFMyz8';

var decodedV1Token =
    Base64DecodedV1Token(fakeTestV1ApiKey, "test.momentohq.com");
var base64EncodedFakeV1AuthToken =
    base64.encode(utf8.encode(jsonEncode(decodedV1Token)));
var fakeSessionToken =
    'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6InN6eTVJLU5oaDZONjZUbTJfeld2UyJ9.eyJlbWFpbCI6ImNocmlzQG1vbWVudG9ocS5jb20iLCJpc3MiOiJodHRwczovL2xvZ2luLXByZXByb2QuZ29tb21lbnRvLmNvbS8iLCJzdWIiOiJnb29nbGUtb2F1dGgyfDExMDE5OTE5NjYwNDc0NDEwMjQyNSIsImF1ZCI6WyJodHRwczovL3ByZXByb2QiLCJodHRwczovL3ByZXByb2QtbW9tZW50by51cy5hdXRoMC5jb20vdXNlcmluZm8iXSwiaWF0IjoxNjg0Mjg1NDIyLCJleHAiOjE2ODQzNzE4MjIsImF6cCI6InRibFdPYk02Zk9iNkJsQWwzUjFPcWZUNTlrTEY3VGJiIiwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCJ9.CKJn23XJ9L-seTfOo8OdAbBSP-2DPEM7hvOT1FayojJJvNmyNHzPxcftANlL64lpu5KWIZHwkNaptwkT8v2m7TVeqzDUR52Zqzk7TvQv-FQD_iI4INebPQrCnCKF2ByqC3fdlfrdXBxErF7rOJRKwyugKNhG7WVtjlm9pKOnIIFpUW_0mxWBObrgMhr1qIOaRPoGhyu1TXVgbdn6GLwBDeDI5XbHvgWiMixgs1BpGe_sOOYIcy8l0_TgwQtqUg9GG9Q88Pdde90w_eGLb6bB2QOqXwksBr8zK-z-VZZsiNVdzokKvAvUt3Ev4F1N8Np9ehFbXnzNsTmh1VqkNESy4w';

const testControlEndpoint = 'control-plane-endpoint.not.a.domain';
const testCacheEndpoint = 'cache-endpoint.not.a.domain';

const testGlobalApiKey = 'testToken';
const testGlobalEndpoint = 'testEndpoint';
const testEnvVarName = 'MOMENTO_TEST_GLOBAL_API_KEY';

void main() {
  group('credential_provider', () {
    group('fromString', () {
      test('parses a valid legacy token', () {
        var authProvider = CredentialProvider.fromString(fakeTestLegacyToken);
        expect(authProvider.apiKey, equals(fakeTestLegacyToken));
        expect(authProvider.controlEndpoint, equals(testControlEndpoint));
        expect(authProvider.cacheEndpoint, equals(testCacheEndpoint));
      });

      test('parses a valid v1 auth token', () {
        var authProvider =
            CredentialProvider.fromString(base64EncodedFakeV1AuthToken);
        expect(authProvider.apiKey, equals(fakeTestV1ApiKey));
        expect(authProvider.controlEndpoint,
            equals('control.${decodedV1Token.endpoint}'));
        expect(authProvider.cacheEndpoint,
            equals('cache.${decodedV1Token.endpoint}'));
      });

      test('parses a token with base endpoint override', () {
        var authProvider = CredentialProvider.fromString(
            base64EncodedFakeV1AuthToken,
            baseEndpointOverride: "test.com");
        expect(authProvider.apiKey, equals(fakeTestV1ApiKey));
        expect(authProvider.controlEndpoint, equals('control.test.com'));
        expect(authProvider.cacheEndpoint, equals('cache.test.com'));
      });
      test('parses a token with endpoint overrides', () {
        var authProvider = CredentialProvider.fromString(
            base64EncodedFakeV1AuthToken,
            endpointOverrides: EndpointOverrides(
                "this.is.a.cache.endpoint", "this.is.a.control.endpoint"));
        expect(authProvider.apiKey, equals(fakeTestV1ApiKey));
        expect(
            authProvider.controlEndpoint, equals('this.is.a.control.endpoint'));
        expect(authProvider.cacheEndpoint, equals('this.is.a.cache.endpoint'));
      });
      test('parses a session token with base endpoint override', () {
        var authProvider = CredentialProvider.fromString(fakeSessionToken,
            endpointOverrides: EndpointOverrides(
                "this.is.a.cache.endpoint", "this.is.a.control.endpoint"));
        expect(authProvider.apiKey, equals(fakeSessionToken));
        expect(
            authProvider.controlEndpoint, equals('this.is.a.control.endpoint'));
        expect(authProvider.cacheEndpoint, equals('this.is.a.cache.endpoint'));
      });
      test(
          'fromString should not allow passing in both endpointOverrides and baseEndpointOverride',
          () {
        expect(
            () => CredentialProvider.fromString(base64EncodedFakeV1AuthToken,
                baseEndpointOverride: "baseendpoint.com",
                endpointOverrides: EndpointOverrides(
                    "this.is.a.cache.endpoint", "this.is.a.control.endpoint")),
            throwsA(TypeMatcher<IllegalArgumentError>()));
      });
    });
    group('fromEnvironmentVariable', () {
      test(
          'fromEnvironmentVariable should not allow passing in both endpointOverrides and baseEndpointOverride',
          () {
        expect(
            () => CredentialProvider.fromEnvironmentVariable(
                base64EncodedFakeV1AuthToken,
                baseEndpointOverride: "baseendpoint.com",
                endpointOverrides: EndpointOverrides(
                    "this.is.a.cache.endpoint", "this.is.a.control.endpoint")),
            throwsA(TypeMatcher<IllegalArgumentError>()));
      });
    });

    group('globalKeyFromString', () {
      test('using static method', () {
        var provider = CredentialProvider.globalKeyFromString(
            testGlobalApiKey, testGlobalEndpoint);
        expect(provider, isA<GlobalKeyStringMomentoTokenProvider>());
        expect(provider.apiKey, equals(testGlobalApiKey));
        expect(provider.controlEndpoint, equals("control.$testGlobalEndpoint"));
        expect(provider.cacheEndpoint, equals("cache.$testGlobalEndpoint"));
      });

      test('using constructor', () {
        var provider = GlobalKeyStringMomentoTokenProvider(
            testGlobalApiKey, testGlobalEndpoint);
        expect(provider, isA<GlobalKeyStringMomentoTokenProvider>());
        expect(provider.apiKey, equals(testGlobalApiKey));
        expect(provider.controlEndpoint, equals("control.$testGlobalEndpoint"));
        expect(provider.cacheEndpoint, equals("cache.$testGlobalEndpoint"));
      });

      test('empty api key throws error', () {
        expect(
            () => GlobalKeyStringMomentoTokenProvider('', testGlobalEndpoint),
            throwsA(CredentialProviderError.emptyApiKey()));
      });

      test('empty endpoint throws error', () {
        expect(() => GlobalKeyStringMomentoTokenProvider(testGlobalApiKey, ''),
            throwsA(CredentialProviderError.emptyEndpoint()));
      });
    });

    group('globalKeyFromEnvironmentVariable', () {
      // Dart does not appear to provide a way to dynamically set environment
      // variables, cannot test the happy path

      test('errors when env var not set using static method', () {
        expect(
            () => GlobalKeyEnvMomentoTokenProvider(
                testEnvVarName, testGlobalEndpoint),
            throwsA(CredentialProviderError.emptyEnvironmentVariable(
                testEnvVarName)));
      });

      test('errors when env var not set using constructor', () {
        expect(
            () => GlobalKeyEnvMomentoTokenProvider(
                testEnvVarName, testGlobalEndpoint),
            throwsA(CredentialProviderError.emptyEnvironmentVariable(
                testEnvVarName)));
      });

      test('empty endpoint throws error', () {
        expect(() => GlobalKeyEnvMomentoTokenProvider(testEnvVarName, ''),
            throwsA(CredentialProviderError.emptyEndpoint()));
      });

      test('empty env var name throws error', () {
        expect(() => GlobalKeyEnvMomentoTokenProvider('', testGlobalEndpoint),
            throwsA(CredentialProviderError.emptyEnvVarName()));
      });

      test('missing env var throws error', () {
        const missingEnvVarName = 'MOMENTO_NONEXISTENT_ENV_VAR';
        expect(
            () => GlobalKeyEnvMomentoTokenProvider(
                missingEnvVarName, testGlobalEndpoint),
            throwsA(CredentialProviderError.emptyEnvironmentVariable(
                missingEnvVarName)));
      });
    });
  });
}

import 'dart:io';

import 'package:momento/src/auth/credential_provider.dart';
import 'package:momento/src/errors/errors.dart';
import 'package:test/test.dart';
import 'dart:convert';

// These tokens have valid syntax, but they don't actually have valid credentials.  Just used for unit testing.
var fakeTestLegacyToken =
    'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJmb29Abm90LmEuZG9tYWluIiwiY3AiOiJjb250cm9sLXBsYW5lLWVuZHBvaW50Lm5vdC5hLmRvbWFpbiIsImMiOiJjYWNoZS1lbmRwb2ludC5ub3QuYS5kb21haW4ifQo.rtxfu4miBHQ1uptWJ2x3UiAwwJYcMeYIkkpXxUno_wIavg4h6YJStcbxk32NDBbmJkJS7mUw6MsvJNWaxfdPOw';
var fakeTestV1ApiKeyB64Encoded =
    'eyJhcGlfa2V5IjogImV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSlBibXhwYm1VZ1NsZFVJRUoxYVd4a1pYSWlMQ0pwWVhRaU9qRTJOemd6TURVNE1USXNJbVY0Y0NJNk5EZzJOVFV4TlRReE1pd2lZWFZrSWpvaUlpd2ljM1ZpSWpvaWFuSnZZMnRsZEVCbGVHRnRjR3hsTG1OdmJTSjkuOEl5OHE4NExzci1EM1lDb19IUDRkLXhqSGRUOFVDSXV2QVljeGhGTXl6OCIsICJlbmRwb2ludCI6ICJ0ZXN0Lm1vbWVudG9ocS5jb20ifQ==';
var fakeTestV1ApiKey =
    "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJPbmxpbmUgSldUIEJ1aWxkZXIiLCJpYXQiOjE2NzgzMDU4MTIsImV4cCI6NDg2NTUxNTQxMiwiYXVkIjoiIiwic3ViIjoianJvY2tldEBleGFtcGxlLmNvbSJ9.8Iy8q84Lsr-D3YCo_HP4d-xjHdT8UCIuvAYcxhFMyz8";

var decodedV1Token =
    Base64DecodedV1Token(fakeTestV1ApiKey, "test.momentohq.com");
var base64EncodedFakeV1AuthToken =
    base64.encode(utf8.encode(jsonEncode(decodedV1Token)));
var fakeSessionToken =
    'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6InN6eTVJLU5oaDZONjZUbTJfeld2UyJ9.eyJlbWFpbCI6ImNocmlzQG1vbWVudG9ocS5jb20iLCJpc3MiOiJodHRwczovL2xvZ2luLXByZXByb2QuZ29tb21lbnRvLmNvbS8iLCJzdWIiOiJnb29nbGUtb2F1dGgyfDExMDE5OTE5NjYwNDc0NDEwMjQyNSIsImF1ZCI6WyJodHRwczovL3ByZXByb2QiLCJodHRwczovL3ByZXByb2QtbW9tZW50by51cy5hdXRoMC5jb20vdXNlcmluZm8iXSwiaWF0IjoxNjg0Mjg1NDIyLCJleHAiOjE2ODQzNzE4MjIsImF6cCI6InRibFdPYk02Zk9iNkJsQWwzUjFPcWZUNTlrTEY3VGJiIiwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCJ9.CKJn23XJ9L-seTfOo8OdAbBSP-2DPEM7hvOT1FayojJJvNmyNHzPxcftANlL64lpu5KWIZHwkNaptwkT8v2m7TVeqzDUR52Zqzk7TvQv-FQD_iI4INebPQrCnCKF2ByqC3fdlfrdXBxErF7rOJRKwyugKNhG7WVtjlm9pKOnIIFpUW_0mxWBObrgMhr1qIOaRPoGhyu1TXVgbdn6GLwBDeDI5XbHvgWiMixgs1BpGe_sOOYIcy8l0_TgwQtqUg9GG9Q88Pdde90w_eGLb6bB2QOqXwksBr8zK-z-VZZsiNVdzokKvAvUt3Ev4F1N8Np9ehFbXnzNsTmh1VqkNESy4w';

const testControlEndpoint = 'control-plane-endpoint.not.a.domain';
const testCacheEndpoint = 'cache-endpoint.not.a.domain';

const fakeTestV2ApiKey =
    'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0IjoiZyIsImp0aSI6InNvbWUtaWQifQ.GMr9nA6HE0ttB6llXct_2Sg5-fOKGFbJCdACZFgNbN1fhT6OPg_hVc8ThGzBrWC_RlsBpLA1nzqK3SOJDXYxAw';
const testEndpoint = 'testEndpoint';
const apiKeyEnvVar = 'MOMENTO_API_KEY';
const endpointEnvVar = 'MOMENTO_ENDPOINT';

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
            throwsA(TypeMatcher<InvalidArgumentException>()));
      });

      test('throws error when given v2 api key', () {
        expect(() => CredentialProvider.fromString(fakeTestV2ApiKey),
            throwsA(TypeMatcher<InvalidArgumentException>()));
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
            throwsA(TypeMatcher<InvalidArgumentException>()));
      });
    });

    group('fromApiKeyV2', () {
      test('using static method', () {
        var provider =
            CredentialProvider.fromApiKeyV2(fakeTestV2ApiKey, testEndpoint);
        expect(provider, isA<ApiKeyV2TokenProvider>());
        expect(provider.apiKey, equals(fakeTestV2ApiKey));
        expect(provider.controlEndpoint, equals("control.$testEndpoint"));
        expect(provider.cacheEndpoint, equals("cache.$testEndpoint"));
      });

      test('using constructor', () {
        var provider = ApiKeyV2TokenProvider(fakeTestV2ApiKey, testEndpoint);
        expect(provider, isA<ApiKeyV2TokenProvider>());
        expect(provider.apiKey, equals(fakeTestV2ApiKey));
        expect(provider.controlEndpoint, equals("control.$testEndpoint"));
        expect(provider.cacheEndpoint, equals("cache.$testEndpoint"));
      });

      test('empty api key throws error', () {
        expect(() => ApiKeyV2TokenProvider('', testEndpoint),
            throwsA(CredentialProviderError.emptyApiKey()));
      });

      test('empty endpoint throws error', () {
        expect(() => ApiKeyV2TokenProvider(fakeTestV2ApiKey, ''),
            throwsA(CredentialProviderError.emptyEndpoint()));
      });

      test('throws error when given v1 api key', () {
        expect(() => ApiKeyV2TokenProvider(fakeTestV1ApiKey, testEndpoint),
            throwsA(TypeMatcher<InvalidArgumentException>()));
      });

      test('throws error when given pre-v1 legacy token', () {
        expect(() => ApiKeyV2TokenProvider(fakeTestLegacyToken, testEndpoint),
            throwsA(TypeMatcher<InvalidArgumentException>()));
      });
    });

    group('fromEnvironmentVariablesV2', () {
      test('static method errors when non-default env vars are not set', () {
        expect(
            () => CredentialProvider.fromEnvironmentVariablesV2(
                apiKeyEnvVar: "NONEXISTENT_1", endpointEnvVar: "NONEXISTENT_2"),
            throwsA(CredentialProviderError.emptyEnvironmentVariable(
                "NONEXISTENT_2")));
      });

      test('constructor errors when non-default env vars are not set', () {
        expect(
            () => EnvMomentoV2TokenProvider(
                apiKeyEnvVar: "NONEXISTENT_1", endpointEnvVar: "NONEXISTENT_2"),
            throwsA(CredentialProviderError.emptyEnvironmentVariable(
                "NONEXISTENT_2")));
      });

      test('static method finds default env vars', () {
        final creds = CredentialProvider.fromEnvironmentVariablesV2();
        expect(creds.cacheEndpoint,
            "cache.${Platform.environment["MOMENTO_ENDPOINT"]}");
        expect(creds.apiKey, equals(Platform.environment["MOMENTO_API_KEY"]));
      });

      test('constructor finds default env vars', () {
        final creds = EnvMomentoV2TokenProvider();
        expect(creds.cacheEndpoint,
            "cache.${Platform.environment["MOMENTO_ENDPOINT"]}");
        expect(creds.apiKey, equals(Platform.environment["MOMENTO_API_KEY"]));
      });
    });

    group('fromDisposableToken', () {
      test('v1 api key succeeds', () {
        var provider =
            CredentialProvider.fromDisposableToken(fakeTestV1ApiKeyB64Encoded);
        expect(provider, isA<StringMomentoTokenProvider>());
        expect(provider.apiKey, equals(fakeTestV1ApiKey));
        expect(provider.controlEndpoint, equals("control.test.momentohq.com"));
        expect(provider.cacheEndpoint, equals("cache.test.momentohq.com"));
      });

      test('pre-v1 api key succeeds', () {
        var provider =
            CredentialProvider.fromDisposableToken(fakeTestLegacyToken);
        expect(provider, isA<StringMomentoTokenProvider>());
        expect(provider.apiKey, equals(fakeTestLegacyToken));
        expect(provider.controlEndpoint,
            equals("control-plane-endpoint.not.a.domain"));
        expect(provider.cacheEndpoint, equals("cache-endpoint.not.a.domain"));
      });

      test('empty token throws error', () {
        expect(() => CredentialProvider.fromDisposableToken(''),
            throwsA(CredentialProviderError.emptyApiKey()));
      });

      test('v2 api key throws error', () {
        expect(() => CredentialProvider.fromDisposableToken(fakeTestV2ApiKey),
            throwsA(TypeMatcher<InvalidArgumentException>()));
      });
    });
  });
}

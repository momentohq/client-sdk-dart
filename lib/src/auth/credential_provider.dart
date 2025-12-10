import 'dart:convert';
import 'dart:io';
import 'package:momento/src/errors/errors.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:string_validator/string_validator.dart';
import 'dart:core';

class EndpointOverrides {
  String controlEndpoint;
  String cacheEndpoint;

  EndpointOverrides(this.cacheEndpoint, this.controlEndpoint);
}

class CredentialProviderError {
  static String emptyApiKey() {
    return "API key is an empty string";
  }

  static String emptyEnvironmentVariable(String envVarName) {
    return "Environment variable $envVarName is required and not set";
  }

  static String emptyEndpoint() {
    return "Endpoint is an empty string";
  }

  static String emptyEnvVarName(String arg) {
    return "Environment variable name for $arg is an empty string";
  }
}

class Base64DecodedV1Token {
  String apiKey = "";
  String endpoint = "";
  Base64DecodedV1Token(this.apiKey, this.endpoint);
  Base64DecodedV1Token.fromJson(Map<String, dynamic> json)
      : apiKey = json['api_key'] as String,
        endpoint = json['endpoint'] as String;
  Map toJson() => {'api_key': apiKey, 'endpoint': endpoint};
}

class _Endpoints {
  String cacheEndpoint = "";
  String controlEndpoint = "";
  _Endpoints(String baseEndpoint) {
    cacheEndpoint = 'cache.$baseEndpoint';
    controlEndpoint = 'control.$baseEndpoint';
  }
}

class _ParsedApiKey {
  String apiKey;
  String? cacheEndpoint;
  String? controlEndpoint;
  _ParsedApiKey(this.apiKey, this.controlEndpoint, this.cacheEndpoint);
}

/// Reads and parses API tokens from a string or an environment variable.
///
/// ```dart
/// final credentialProvider = CredentialProvider.fromEnvironmentVariable("MOMENTO_API_KEY");
/// ```
/// or
/// ```dart
/// CredentialProvider.fromString(myApiTokenString);
/// ```
abstract class CredentialProvider {
  final String _apiKey;
  final String _controlEndpoint;
  final String _cacheEndpoint;
  CredentialProvider(this._apiKey, this._controlEndpoint, this._cacheEndpoint);

  /// The API key used to construct the [CredentialProvider]
  String get apiKey => _apiKey;

  /// The URI for the control plane endpoint
  String get controlEndpoint => _controlEndpoint;

  /// The URI for the data plane endpoint
  String get cacheEndpoint => _cacheEndpoint;

  /// Reads and parses an API token stored in an environment variable.
  ///
  /// Returns a credential provider object which is used to instantiate Momento
  /// clients.
  /// ```dart
  /// final credentialProvider = CredentialProvider.fromEnvironmentVariable("MOMENTO_API_KEY");
  /// ```
  @Deprecated('Use fromEnvVarV2() instead')
  static CredentialProvider fromEnvironmentVariable(String envVarName,
      {String? baseEndpointOverride, EndpointOverrides? endpointOverrides}) {
    if (endpointOverrides != null && baseEndpointOverride != null) {
      throw IllegalArgumentError(
          "either pass in 'baseEndpointOverride' or 'endpointOverrides', cannot pass in both");
    }
    return EnvMomentoTokenProvider(envVarName,
        baseEndpointOverride: baseEndpointOverride,
        endpointOverrides: endpointOverrides);
  }

  /// Reads and parses an API token stored in a string.
  ///
  /// Returns a credential provider object which is used to instantiate Momento
  /// clients.
  /// ```dart
  /// final credentialProvider = CredentialProvider.fromString("MOMENTO_API_KEY");
  /// ```
  @Deprecated('Use fromApiKeyV2() or fromDisposableToken() instead')
  static CredentialProvider fromString(String apiKey,
      {String? baseEndpointOverride, EndpointOverrides? endpointOverrides}) {
    if (endpointOverrides != null && baseEndpointOverride != null) {
      throw IllegalArgumentError(
          "either pass in 'baseEndpointOverride' or 'endpointOverrides', cannot pass in both");
    }
    return StringMomentoTokenProvider(apiKey,
        baseEndpointOverride: baseEndpointOverride,
        endpointOverrides: endpointOverrides);
  }

  static _ParsedApiKey _parseApiKey(String apiKey) {
    if (isBase64(apiKey)) {
      return CredentialProvider._parseV1Token(apiKey);
    }
    return CredentialProvider._parseJwtToken(apiKey);
  }

  static _ParsedApiKey _parseJwtToken(String jwt) {
    Map<String, dynamic> claims = JwtDecoder.decode(jwt);
    if (claims["t"] == "g") {
      throw IllegalArgumentError(
          "Received a v2 API key. Are you using the correct key? Or did you mean to use `fromApiKeyV2()` or `fromEnvVarV2()` instead?");
    }
    return _ParsedApiKey(jwt, claims["cp"], claims["c"]);
  }

  static _ParsedApiKey _parseV1Token(String apiKey) {
    final decodedJson = json.decode(utf8.decode(base64Decode(apiKey)));
    final decoded = Base64DecodedV1Token.fromJson(decodedJson);
    if (decoded.endpoint.isEmpty) {
      throw IllegalArgumentError(
          "invalid jwt missing required claim 'endpoint'");
    }
    if (decoded.apiKey.isEmpty) {
      throw IllegalArgumentError(
          "invalid jwt missing required claim 'api_key'");
    }
    final endpoints = _Endpoints(decoded.endpoint);
    return _ParsedApiKey(
        decoded.apiKey, endpoints.controlEndpoint, endpoints.cacheEndpoint);
  }

  static bool isV2ApiKey(String apiKey) {
    if (isBase64(apiKey)) {
      return false;
    }
    Map<String, dynamic> claims = JwtDecoder.decode(apiKey);
    return claims["t"] == "g";
  }

  static CredentialProvider fromApiKeyV2(String apiKey, String endpoint) {
    return ApiKeyV2TokenProvider(apiKey, endpoint);
  }

  static CredentialProvider fromEnvVarV2(
      String apiKeyEnvVar, String endpointEnvVar) {
    return EnvVarV2TokenProvider(apiKeyEnvVar, endpointEnvVar);
  }

  static CredentialProvider fromDisposableToken(String disposableToken) {
    return StringMomentoTokenProvider(disposableToken);
  }
}

class StringMomentoTokenProvider implements CredentialProvider {
  @override
  String _apiKey = "";

  @override
  String _cacheEndpoint = "";

  @override
  String _controlEndpoint = "";

  /// Parses the API token stored in the string [apiKey].
  /// Also allows overrides of the base endpoint or cache and control endpoints.
  StringMomentoTokenProvider(String apiKey,
      {String? baseEndpointOverride, EndpointOverrides? endpointOverrides}) {
    if (apiKey.isEmpty) {
      throw CredentialProviderError.emptyApiKey();
    }
    final parsedApiKey = CredentialProvider._parseApiKey(apiKey);
    _apiKey = parsedApiKey.apiKey;

    if (baseEndpointOverride != null) {
      final endpoints = _Endpoints(baseEndpointOverride);
      _cacheEndpoint = endpoints.cacheEndpoint;
      _controlEndpoint = endpoints.controlEndpoint;
    } else if (endpointOverrides != null) {
      _cacheEndpoint = endpointOverrides.cacheEndpoint;
      _controlEndpoint = endpointOverrides.controlEndpoint;
    } else {
      if (parsedApiKey.controlEndpoint == null ||
          parsedApiKey.cacheEndpoint == null) {
        throw IllegalArgumentError("failed to parse jwt token");
      }
      _cacheEndpoint = parsedApiKey.cacheEndpoint!;
      _controlEndpoint = parsedApiKey.controlEndpoint!;
    }
  }

  @override
  String get apiKey => _apiKey;

  @override
  String get cacheEndpoint => _cacheEndpoint;

  @override
  String get controlEndpoint => _controlEndpoint;
}

class EnvMomentoTokenProvider implements CredentialProvider {
  @override
  String _apiKey = "";

  @override
  String _cacheEndpoint = "";

  @override
  String _controlEndpoint = "";

  /// Parses the API token stored in the environment variable [envVarName].
  /// Also allows overrides of the base endpoint or cache and control endpoints.
  EnvMomentoTokenProvider(String envVarName,
      {String? baseEndpointOverride, EndpointOverrides? endpointOverrides}) {
    if (Platform.environment.containsKey(envVarName) == false) {
      throw CredentialProviderError.emptyEnvironmentVariable(envVarName);
    }

    final apiKey = Platform.environment[envVarName] ?? '';
    if (apiKey.isEmpty) {
      throw CredentialProviderError.emptyApiKey();
    }
    final parsedApiKey = CredentialProvider._parseApiKey(apiKey);
    _apiKey = parsedApiKey.apiKey;

    if (baseEndpointOverride != null) {
      final endpoints = _Endpoints(baseEndpointOverride);
      _cacheEndpoint = endpoints.cacheEndpoint;
      _controlEndpoint = endpoints.controlEndpoint;
    } else if (endpointOverrides != null) {
      _cacheEndpoint = endpointOverrides.cacheEndpoint;
      _controlEndpoint = endpointOverrides.controlEndpoint;
    } else {
      if (parsedApiKey.controlEndpoint == null ||
          parsedApiKey.cacheEndpoint == null) {
        throw IllegalArgumentError("failed to parse jwt token");
      }
      _cacheEndpoint = parsedApiKey.cacheEndpoint!;
      _controlEndpoint = parsedApiKey.controlEndpoint!;
    }
  }

  @override
  String get apiKey => _apiKey;

  @override
  String get cacheEndpoint => _cacheEndpoint;

  @override
  String get controlEndpoint => _controlEndpoint;
}

class ApiKeyV2TokenProvider implements CredentialProvider {
  @override
  String _apiKey = "";

  @override
  String _cacheEndpoint = "";

  @override
  String _controlEndpoint = "";

  /// Creates a CredentialProvider from the API token stored in the string [apiKey]
  /// and the provided Momento endpoint.
  ApiKeyV2TokenProvider(String apiKey, String endpoint) {
    if (endpoint.isEmpty) {
      throw CredentialProviderError.emptyEndpoint();
    }
    if (apiKey.isEmpty) {
      throw CredentialProviderError.emptyApiKey();
    }
    if (!CredentialProvider.isV2ApiKey(apiKey)) {
      throw IllegalArgumentError(
          "Received an invalid v2 API key. Are you using the correct key? Or did you mean to use `fromString()` with a legacy key instead?");
    }
    _apiKey = apiKey;
    _cacheEndpoint = "cache.$endpoint";
    _controlEndpoint = "control.$endpoint";
  }

  @override
  String get apiKey => _apiKey;

  @override
  String get cacheEndpoint => _cacheEndpoint;

  @override
  String get controlEndpoint => _controlEndpoint;
}

class EnvVarV2TokenProvider implements CredentialProvider {
  @override
  String _apiKey = "";

  @override
  String _cacheEndpoint = "";

  @override
  String _controlEndpoint = "";

  /// Creates a CredentialProvider from the API token stored in the environment variable [envVarName]
  /// and the provided Momento endpoint.
  EnvVarV2TokenProvider(String apiKeyEnvVar, String endpointEnvVar) {
    if (endpointEnvVar.isEmpty) {
      throw CredentialProviderError.emptyEnvVarName("endpoint");
    }
    if (Platform.environment.containsKey(endpointEnvVar) == false) {
      throw CredentialProviderError.emptyEnvironmentVariable(endpointEnvVar);
    }
    final endpoint = Platform.environment[endpointEnvVar] ?? '';
    if (endpoint.isEmpty) {
      throw CredentialProviderError.emptyEndpoint();
    }

    if (apiKeyEnvVar.isEmpty) {
      throw CredentialProviderError.emptyEnvVarName("api key");
    }
    if (Platform.environment.containsKey(apiKeyEnvVar) == false) {
      throw CredentialProviderError.emptyEnvironmentVariable(apiKeyEnvVar);
    }
    final apiKey = Platform.environment[apiKeyEnvVar] ?? '';
    if (apiKey.isEmpty) {
      throw CredentialProviderError.emptyApiKey();
    }

    if (!CredentialProvider.isV2ApiKey(apiKey)) {
      throw IllegalArgumentError(
          "Received an invalid v2 API key. Are you using the correct key? Or did you mean to use `fromEnvironmentVariable()` with a legacy key instead?");
    }
    _apiKey = apiKey;
    _cacheEndpoint = "cache.$endpoint";
    _controlEndpoint = "control.$endpoint";
  }

  @override
  String get apiKey => _apiKey;

  @override
  String get cacheEndpoint => _cacheEndpoint;

  @override
  String get controlEndpoint => _controlEndpoint;
}

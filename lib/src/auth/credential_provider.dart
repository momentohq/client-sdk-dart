import 'dart:convert';
import 'dart:io';
import 'package:momento/src/errors/errors.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:string_validator/string_validator.dart';

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
  static CredentialProvider fromEnvironmentVariable(String envVarName,
      {String? baseEndpointOverride, EndpointOverrides? endpointOverrides}) {
    if (endpointOverrides != null && baseEndpointOverride != null) {
      throw IllegalArgumentError(
          "either pass in 'baseEndpointOverride' or 'endpointOverrides', cannot pass in both");
    }
    if (endpointOverrides != null) {
      return EnvMomentoTokenProvider.withEndpointOverrides(
          envVarName, endpointOverrides);
    }
    if (baseEndpointOverride != null && baseEndpointOverride.isNotEmpty) {
      return EnvMomentoTokenProvider.withBaseEndpointOverride(
          envVarName, baseEndpointOverride);
    }
    return EnvMomentoTokenProvider(envVarName);
  }

  /// Reads and parses an API token stored in a string.
  ///
  /// Returns a credential provider object which is used to instantiate Momento
  /// clients.
  /// ```dart
  /// final credentialProvider = CredentialProvider.fromString("MOMENTO_API_KEY");
  /// ```
  static CredentialProvider fromString(String apiKey,
      {String? baseEndpointOverride, EndpointOverrides? endpointOverrides}) {
    if (endpointOverrides != null && baseEndpointOverride != null) {
      throw IllegalArgumentError(
          "either pass in 'baseEndpointOverride' or 'endpointOverrides', cannot pass in both");
    }
    if (endpointOverrides != null) {
      return StringMomentoTokenProvider.withEndpointOverrides(
          apiKey, endpointOverrides);
    }
    if (baseEndpointOverride != null && baseEndpointOverride.isNotEmpty) {
      return StringMomentoTokenProvider.withBaseEndpointOverride(
          apiKey, baseEndpointOverride);
    }
    return StringMomentoTokenProvider.withApiKey(apiKey);
  }

  static _ParsedApiKey _parseApiKey(String apiKey) {
    if (isBase64(apiKey)) {
      return CredentialProvider._parseV1Token(apiKey);
    }
    return CredentialProvider._parseJwtToken(apiKey);
  }

  static _ParsedApiKey _parseJwtToken(String jwt) {
    Map<String, dynamic> claims = JwtDecoder.decode(jwt);
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
}

class StringMomentoTokenProvider implements CredentialProvider {
  @override
  String _apiKey = "";

  @override
  String _cacheEndpoint = "";

  @override
  String _controlEndpoint = "";

  StringMomentoTokenProvider();

  /// Parses the API token stored in the string [apiKey].
  StringMomentoTokenProvider.withApiKey(String apiKey) {
    if (apiKey.isEmpty) {
      throw CredentialProviderError.emptyApiKey();
    }
    final parsedApiKey = CredentialProvider._parseApiKey(apiKey);
    _apiKey = parsedApiKey.apiKey;
    if (parsedApiKey.controlEndpoint == null ||
        parsedApiKey.cacheEndpoint == null) {
      throw IllegalArgumentError("failed to parse jwt token");
    }
    _cacheEndpoint = parsedApiKey.cacheEndpoint!;
    _controlEndpoint = parsedApiKey.controlEndpoint!;
  }

  /// Constructor allowing override of the base endpoint.
  StringMomentoTokenProvider.withBaseEndpointOverride(
      String apiKey, String baseEndpoint) {
    if (apiKey.isEmpty) {
      throw CredentialProviderError.emptyApiKey();
    }
    final parsedApiKey = CredentialProvider._parseApiKey(apiKey);
    final endpoints = _Endpoints(baseEndpoint);
    _apiKey = parsedApiKey.apiKey;
    _cacheEndpoint = endpoints.cacheEndpoint;
    _controlEndpoint = endpoints.controlEndpoint;
  }

  /// Constructor allowing override of the cache and control endpoints.
  StringMomentoTokenProvider.withEndpointOverrides(
      String apiKey, EndpointOverrides overrides) {
    if (apiKey.isEmpty) {
      throw CredentialProviderError.emptyApiKey();
    }
    final parsedApiKey = CredentialProvider._parseApiKey(apiKey);
    _apiKey = parsedApiKey.apiKey;
    _cacheEndpoint = overrides.cacheEndpoint;
    _controlEndpoint = overrides.controlEndpoint;
  }

  @override
  String get apiKey => _apiKey;

  @override
  String get cacheEndpoint => _cacheEndpoint;

  @override
  String get controlEndpoint => _controlEndpoint;
}

class EnvMomentoTokenProvider extends StringMomentoTokenProvider {
  // Calling super() after the constructor name will cause the env var
  // check in the EnvMomentoTokenProvider constructor bodies to be skipped

  /// Parses the API token stored in the environment variable [envVarName].
  EnvMomentoTokenProvider(String envVarName) {
    if (Platform.environment.containsKey(envVarName) == false) {
      throw CredentialProviderError.emptyEnvironmentVariable(envVarName);
    }
    final apiKey = Platform.environment[envVarName] ?? '';
    if (apiKey.isEmpty) {
      throw CredentialProviderError.emptyApiKey();
    }
    final parsedApiKey = CredentialProvider._parseApiKey(apiKey);
    if (parsedApiKey.controlEndpoint == null ||
        parsedApiKey.cacheEndpoint == null) {
      throw IllegalArgumentError("failed to parse jwt token");
    }
    _apiKey = parsedApiKey.apiKey;
    _cacheEndpoint = parsedApiKey.cacheEndpoint!;
    _controlEndpoint = parsedApiKey.controlEndpoint!;
  }

  /// Copy constructor to override the base endpoint.
  EnvMomentoTokenProvider.withBaseEndpointOverride(
      String envVarName, String baseEndpoint) {
    if (Platform.environment.containsKey(envVarName) == false) {
      throw CredentialProviderError.emptyEnvironmentVariable(envVarName);
    }
    final apiKey = Platform.environment[envVarName] ?? '';
    if (apiKey.isEmpty) {
      throw CredentialProviderError.emptyApiKey();
    }
    final parsedApiKey = CredentialProvider._parseApiKey(apiKey);
    final endpoints = _Endpoints(baseEndpoint);
    _apiKey = parsedApiKey.apiKey;
    _cacheEndpoint = endpoints.cacheEndpoint;
    _controlEndpoint = endpoints.controlEndpoint;
  }

  /// Constructor allowing override of the cache and control endpoints.
  EnvMomentoTokenProvider.withEndpointOverrides(
      String envVarName, EndpointOverrides overrides) {
    if (Platform.environment.containsKey(envVarName) == false) {
      throw CredentialProviderError.emptyEnvironmentVariable(envVarName);
    }
    final apiKey = Platform.environment[envVarName] ?? '';
    if (apiKey.isEmpty) {
      throw CredentialProviderError.emptyApiKey();
    }
    final parsedApiKey = CredentialProvider._parseApiKey(apiKey);
    _apiKey = parsedApiKey.apiKey;
    _cacheEndpoint = overrides.cacheEndpoint;
    _controlEndpoint = overrides.controlEndpoint;
  }
}

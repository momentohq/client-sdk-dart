import 'dart:convert';
import 'dart:io';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:string_validator/string_validator.dart';

enum CredentialProviderError {
  emptyApiKey,
  emptyAuthEnvironmentVariable,
  caseBadToken,
}

extension CredentialProviderErrorNames on CredentialProviderError {
  String get name {
    switch (this) {
      case CredentialProviderError.emptyApiKey:
        return "API key is an empty string";
      case CredentialProviderError.emptyAuthEnvironmentVariable:
        return "API key environment variable name is an empty string";
      case CredentialProviderError.caseBadToken:
        return "invalid API key";
    }
  }
}

class Base64DecodedV1Token {
  String apiKey = "";
  String endpoint = "";
  Base64DecodedV1Token(this.apiKey, this.endpoint);
  Base64DecodedV1Token.fromJson(Map<String, dynamic> json)
      : apiKey = json['api_key'] as String,
        endpoint = json['endpoint'] as String;
  Map toJson() => {
    'api_key': apiKey,
    'endpoint': endpoint
  };
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
  String cacheEndpoint;
  String controlEndpoint;
  _ParsedApiKey(this.apiKey, this.controlEndpoint, this.cacheEndpoint);
}

abstract class CredentialProvider {
  final String _apiKey;
  final String _controlEndpoint;
  final String _cacheEndpoint;
  CredentialProvider(this._apiKey, this._controlEndpoint, this._cacheEndpoint);
  String get apiKey => _apiKey;
  String get controlEndpoint => _controlEndpoint;
  String get cacheEndpoint => _cacheEndpoint;

  static CredentialProvider fromEnvironmentVariable(String envVarName) {
    return EnvMomentoTokenProvider(envVarName);
  }

  static CredentialProvider fromString(String apiKey) {
    return StringMomentoTokenProvider(apiKey);
  }

  static _ParsedApiKey _parseApiKey(String apiKey) {
    if (isBase64(apiKey)) {
      return CredentialProvider._parseV1Token(apiKey);
    }
    return CredentialProvider._parseJwtToken(apiKey);
  }

  static _ParsedApiKey _parseJwtToken(String jwt) {
    Map<String, dynamic> claims = JwtDecoder.decode(jwt);
    if (!claims.containsKey("c") || !claims.containsKey("cp")) {
      throw "failed to parse jwt token";
    }
    return _ParsedApiKey(jwt, claims["cp"], claims["c"]);
  }

  static _ParsedApiKey _parseV1Token(String apiKey) {
    final decodedJson = json.decode(utf8.decode(base64Decode(apiKey)));
    final decoded = Base64DecodedV1Token.fromJson(decodedJson);
    if (decoded.endpoint.isEmpty) {
      throw "invalid jwt missing required claim 'endpoint'";
    }
    if (decoded.apiKey.isEmpty) {
      throw "invalid jwt missing required claim 'api_key'";
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

  StringMomentoTokenProvider(String apiKey,
      {String? controlEndpoint, String? cacheEndpoint}) {
    if (apiKey.isEmpty) {
      throw CredentialProviderError.emptyApiKey.name;
    }
    final parsedApiKey = CredentialProvider._parseApiKey(apiKey);
    _apiKey = parsedApiKey.apiKey;
    _cacheEndpoint = parsedApiKey.cacheEndpoint;
    _controlEndpoint = parsedApiKey.controlEndpoint;
  }

  @override
  String get apiKey => _apiKey;

  @override
  String get cacheEndpoint => _cacheEndpoint;

  @override
  String get controlEndpoint => _controlEndpoint;
}

class EnvMomentoTokenProvider extends StringMomentoTokenProvider {
  EnvMomentoTokenProvider(String envVarName,
      {String? controlEndpoint, String? cacheEndpoint})
      : super(Platform.environment[envVarName] ?? '',
            controlEndpoint: controlEndpoint, cacheEndpoint: cacheEndpoint);
}

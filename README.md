<head>
  <meta name="Momento Client Library Documentation for Dart" content="Momento client software development kit for Dart">
</head>
<img src="https://docs.momentohq.com/img/momento-logo-forest.svg" alt="logo" width="400"/>

[![project status](https://momentohq.github.io/standards-and-practices/badges/project-status-official.svg)](https://github.com/momentohq/standards-and-practices/blob/main/docs/momento-on-github.md)
[![project stability](https://momentohq.github.io/standards-and-practices/badges/project-stability-beta.svg)](https://github.com/momentohq/standards-and-practices/blob/main/docs/momento-on-github.md)

# Momento Client Library for Dart

Momento Cache is a fast, simple, pay-as-you-go caching solution without any of the operational overhead
required by traditional caching solutions.  This repo contains the source code for the Momento client library for Dart.

To get started with Momento you will need a Momento Auth Token. You can get one from the [Momento Console](https://console.gomomento.com).

* Website: [https://www.gomomento.com/](https://www.gomomento.com/)
* Momento Documentation: [https://docs.momentohq.com/](https://docs.momentohq.com/)
* Getting Started: [https://docs.momentohq.com/getting-started](https://docs.momentohq.com/getting-started)
* Momento SDK Documentation for Dart: [https://docs.momentohq.com/sdks/dart](https://docs.momentohq.com/sdks/dart)
* Discuss: [Momento Discord](https://discord.gg/3HkAKjUZGq)

# Momento Dart SDK

To get started with Momento you will need:

- A Momento API key. You can get one from the [Momento Console](https://console.gomomento.com).
- A Momento service endpoint is required. You can find a [list of them here](https://docs.momentohq.com/platform/regions)

For more information, check out the following links:

- Website: [https://www.gomomento.com/](https://www.gomomento.com/)
- Momento Documentation: [https://docs.momentohq.com/](https://docs.momentohq.com/)
- Getting Started: [https://docs.momentohq.com/getting-started](https://docs.momentohq.com/getting-started)

## Packages

The Momento Dart SDK is available on [pub.dev](https://pub.dev/packages/momento) 

To install in your Dart program, use: 

```bash
dart pub add momento
```

To install in your Flutter program, use: 

```bash
flutter pub add momento
```

## Usage

Check out our [example](./example/) directory for complete examples of using the Momento Dart SDK to implement a publish and subscribe system in a basic Dart program and in a Flutter app.

Here is a quickstart you can use for your own project:

```dart
import 'package:momento/momento.dart';

Future<void> main() async {
  final cacheClient = CacheClient(
      CredentialProvider.fromEnvironmentVariablesV2(),
      CacheClientConfigurations.latest(),
      Duration(seconds: 30));

  final cacheName = "cache";
  final key = "key";
  final value = "value";

  final createResp = await cacheClient.createCache(cacheName);
  switch (createResp) {
    case CreateCacheSuccess():
      print("Cache created!");
    case CreateCacheAlreadyExists():
      print("Cache already exists!");
    case CreateCacheError():
      print(
          "Cache creation error: ${createResp.errorCode} ${createResp.message}");
  }

  final setResp = await cacheClient.set(cacheName, key, value);
  switch (setResp) {
    case SetSuccess():
      print("Set successful!");
    case SetError():
      print("Set error: ${setResp.errorCode} ${setResp.message}");
  }

  final getResp = await cacheClient.get(cacheName, key);
  switch (getResp) {
    case GetHit():
      print("Found value in $cacheName: ${getResp.value}");
    case GetMiss():
      print("Value was not found in $cacheName!");
    case GetError():
      print("Got an error: ${getResp.errorCode} ${getResp.message}");
  }

  await cacheClient.close();
}

```

## Getting Started and Documentation

General documentation on Momento and the Momento SDKs is available on the [Momento Docs website](https://docs.momentohq.com/). Specific usage examples for the Dart SDK are coming soon!

## Examples

Check out full working code in the [example](./example/) directory of this repository!

## Logging

There is a `LogLevel` enum that contains the following log levels:

- `LogLevel.trace`
- `LogLevel.debug`
- `LogLevel.info`
- `LogLevel.warn`
- `LogLevel.error`
- `LogLevel.fatal`
- `LogLevel.off`

This enum can be used to configure the logging level of the Momento package. By default, the logging level is set to `LogLevel.info`. To change the logging level, pass the desired level to the `Configuration` constructor:

```dart
var config = Mobile.latest(logLevel: LogLevel.debug);
```

## Developing

If you are interested in contributing to the SDK, please see the [CONTRIBUTING](./CONTRIBUTING.md) docs.

----------------------------------------------------------------------------------------
For more info, visit our website at [https://gomomento.com](https://gomomento.com)!

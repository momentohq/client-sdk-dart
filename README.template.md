{{ ossHeader }}

# Momento Dart SDK

To get started with Momento you will need a Momento API key. You can get one from the [Momento Console](https://console.gomomento.com/api-keys).

* Website: [https://www.gomomento.com/](https://www.gomomento.com/)
* Momento Documentation: [https://docs.momentohq.com/](https://docs.momentohq.com/)
* Getting Started: [https://docs.momentohq.com/getting-started](https://docs.momentohq.com/getting-started)
* Discuss: [Momento Discord](https://discord.gg/3HkAKjUZGq)

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
{% include "./example/quickstart/bin/quickstart.dart" %}
```

## Getting Started and Documentation

General documentation on Momento and the Momento SDKs is available on the [Momento Docs website](https://docs.momentohq.com/). Specific usage examples for the Dart SDK are coming soon!

## Examples

Check out full working code in the [example](./example/) directory of this repository!

## Logging

There is a `LogLevel` enum that contains the following log levels:

* `LogLevel.trace`
* `LogLevel.debug`
* `LogLevel.info`
* `LogLevel.warn`
* `LogLevel.error`
* `LogLevel.fatal`
* `LogLevel.off`

This enum can be used to configure the logging level of the Momento package. By default, the logging level is set to `LogLevel.info`. To change the logging level, pass the desired level to the `Configuration` constructor:

```dart
var config = Mobile.latest(logLevel: LogLevel.debug);
```

## Developing

If you are interested in contributing to the SDK, please see the [CONTRIBUTING](./CONTRIBUTING.md) docs.

{{ ossFooter }}

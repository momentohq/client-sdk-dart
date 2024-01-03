<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

## Developer Setup

1. install [dart using homebrew](https://dart.dev/get-dart#install)
2. Using Intellij IDE for dart development
3. Installed [dart plugin](https://plugins.jetbrains.com/plugin/6351-dart) for intellij
4. `brew info dart` to determine where the dart sdk is installed
5. followed [these](https://fluttermaster.com/config-dart-sdk-inside-intellij-idea-on-macos/) instructions on how to setup sdk inside of intellij

In VSCode, there's an extension for Dart and Flutter files.
To install dependencies using CLI: `dart pub get`
Running tests: `dart test`
Linting and formatting: `dart format .` and `dart fix`

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

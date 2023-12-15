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

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
const like = 'sample';
```

## Logging

We use the [Dart logging package](https://github.com/dart-lang/logging) to create internal Loggers for producing Momento-related logs. The default logger does not do anything with the logs, so you must configure the logging level and handler at the beginning of your program:

```
Logger.root.level = Level.ALL; // defaults to Level.INFO
Logger.root.onRecord.listen((record) {
  print('${record.level.name}: ${record.time}: ${record.message}');
});
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.

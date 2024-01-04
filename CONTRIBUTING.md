# Welcome to client-sdk-dart contributing guide :wave:

Thank you for taking your time to contribute to our Dart SDK!
<br/>
This guide will provide you information to start your own development and testing.
<br/>
Happy coding :dancer:
<br/>

## Requirements :coffee:

- Dart version [3 or higher](https://dart.dev/get-dart) is required.
- A Momento API key is required, you can generate one using the [Momento Console](https://console.gomomento.com/api-keys)

<br/>

## Developer Setup

If you're using the IntelliJ IDE for development, you may want to install the [dart plugin](https://plugins.jetbrains.com/plugin/6351-dart). 

To install the repository's dependencies, run `dart pub get`.

To lint your files while developing, run `dart format .` from the root of the repository.

## Examples

All examples are in subdirectories of `example`. We currently have a publish-and-subscribe example app in [example/topics](./example/topics/) that demonstrates how to use the Momento Topic Client to both publish and subscribe to a topic, as well as an example Flutter app in [example/flutter_chat_app](./example/flutter_chat_app/) that uses Momento Topics to create a chat app demo.

## Build :computer:

You can build the SDK for a specific platform using the [`dart compile`](https://dart.dev/tools/dart-compile) command from the root of the repository.

## Running tests

You can use the this command from the root of the repository to run the tests:

```bash
TEST_API_KEY=<your api key> dart test
```
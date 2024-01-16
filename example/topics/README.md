# Topics Examples

## Prerequisites

- [Installed Dart](https://dart.dev/get-dart)
- Momento API key, which you can generate from the [Momento Web Console](https://console.gomomento.com/api-keys)

## Basic Example

A very basic example of a Topics subscriber can be run using:

```
cd topics/basic_subscriber
MOMENTO_API_KEY="your-api-key" dart run
```

A very basic example of a Topics publisher can be run using:

```
cd topics/basic_publisher
MOMENTO_API_KEY="your-api-key" dart run
```

## Advanced Example

The advanced example shows how you can unsubscribe from a topic (i.e. cancel a stream of messages) as well as how you can enable logging at a desired logging level.

```
cd topics/advanced
MOMENTO_API_KEY="your-api-key" dart run
```
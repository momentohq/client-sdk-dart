import 'dart:io';
import 'package:momento/momento.dart';

void main() async {
  final cacheClient = CacheClient(
      CredentialProvider.fromEnvironmentVariable("MOMENTO_API_KEY"),
      MobileCacheConfiguration.latest(),
      Duration(seconds: 30));

  final cacheName = "cache";
  final key = StringValue("key");
  final value = StringValue("value");

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

  exit(0);
}

import 'package:momento/momento.dart';

Future<void> main() async {
  final cacheClient = CacheClient(
      CredentialProvider.fromEnvironmentVariable("MOMENTO_API_KEY"),
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
      print("Cache creation error: ${createResp.errorCode} ${createResp.message}");
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

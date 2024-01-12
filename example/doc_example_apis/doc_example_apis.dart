import 'dart:io';
import 'package:momento/momento.dart';
import 'package:uuid/uuid.dart';

Future<void> example_API_InstantiateCacheClient() async {
  try {
    final cacheClient = CacheClient(
        CredentialProvider.fromEnvironmentVariable("MOMENTO_API_KEY"),
        CacheClientConfigurations.latest(),
        Duration(seconds: 30));
  } catch (e) {
    print("Unable to create cache client: $e");
    exit(1);
  }
}

Future<void> example_API_CreateCache(CacheClient cacheClient) async {
  final result = await cacheClient.createCache("test-cache");
  switch (result) {
    case CreateCacheAlreadyExists():
      print("Cache already exists");
    case CreateCacheError():
      print("Error creating cache: $result");
    case CreateCacheSuccess():
      print("Successfully created the cache");
  }
}

Future<void> example_API_ListCaches(CacheClient cacheClient) async {
  final result = await cacheClient.listCaches();
  switch (result) {
    case ListCachesError():
      print("Error listing caches: $result");
    case ListCachesSuccess():
      print("Successfully listed caches: ${result.cacheNames}");
  }
}

Future<void> example_API_DeleteCache(CacheClient cacheClient) async {
  final result = await cacheClient.deleteCache("test-cache");
  switch (result) {
    case DeleteCacheError():
      print("Error deleting cache: $result");
      exit(1);
    case DeleteCacheSuccess():
      print("Successfully deleted cache");
  }
}

Future<void> example_API_Set(CacheClient cacheClient) async {
  final result = await cacheClient.set("test-cache", "test-key", "test-value");
  switch (result) {
    case SetError():
      print("Error setting key: $result");
      exit(1);
    case SetSuccess():
      print("Successfully set item in the cache");
  }
}

Future<void> example_API_Get(CacheClient cacheClient) async {
  final result = await cacheClient.get("test-cache", "test-key");
  switch (result) {
    case GetMiss():
      print("Key was not found in cache.");
    case GetError():
      print("Error getting key: $result");
    case GetHit():
      print("Successfully got item from cache: ${result.value}");
  }
}

Future<void> example_API_Delete(CacheClient cacheClient) async {
  final result = await cacheClient.delete("test-cache", "test-key");
  switch (result) {
    case DeleteError():
      print("Error deleting key: $result");
      exit(1);
    case DeleteSuccess():
      print("Successfully deleted key from cache");
  }
}

Future<void> main() async {
  final cacheClient = CacheClient(
      CredentialProvider.fromEnvironmentVariable("MOMENTO_API_KEY"),
      CacheClientConfigurations.latest(),
      Duration(seconds: 30));

  final cacheName = "doc-example-apis-${Uuid().v4()}";
  final key = "myKey";
  final value = "myValue";

  await example_API_InstantiateCacheClient();
  await example_API_CreateCache(cacheClient);
  await example_API_ListCaches(cacheClient);

  await example_API_Set(cacheClient);
  await example_API_Get(cacheClient);
  await example_API_Delete(cacheClient);

  await example_API_DeleteCache(cacheClient);
  await cacheClient.close();
}

import 'package_version.dart';
import 'dart:io' show Platform;

Map<String, String> constructHeaders(bool firstRequest, String clientType, {String? cacheName}) {
  var headers = <String, String>{};
  if (cacheName != null) {
    headers.addEntries({'cache': cacheName}.entries);
  }
  if (firstRequest) {
    headers.addEntries({'agent': 'dart:$clientType:$packageVersion'}.entries);
    headers.addEntries({'runtime-version': Platform.version}.entries);
  }
  return headers;
}

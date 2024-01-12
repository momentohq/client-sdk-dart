import 'package_version.dart';

Map<String, String> constructHeaders(bool firstRequest, {String? cacheName}) {
  var headers = <String, String>{};
  if (cacheName != null) {
    headers.addEntries({'cache': cacheName}.entries);
  }
  if (firstRequest) {
    headers.addEntries({'agent': 'dart:$packageVersion'}.entries);
  }
  return headers;
}

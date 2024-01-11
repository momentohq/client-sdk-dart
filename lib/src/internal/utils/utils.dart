import 'dart:io';
import 'dart:isolate';

import 'package:yaml/yaml.dart';

// Extract the package version number from
// the pubspec.yaml file if it's found
Future<String?> findPackageVersion() async {
  File? pubspecFile = await findPubspecFile();
  if (pubspecFile != null) {
    Map pubspec = loadYaml(pubspecFile.readAsStringSync());
    return pubspec['version'];
  }
  return null;
}

// Construct relative path to the pubspec.yaml file
Future<File?> findPubspecFile() async {
  final currentScriptPath = Directory.current.path;
  if (currentScriptPath.contains('client-sdk-dart')) {
    final pathToSdk = currentScriptPath.split('client-sdk-dart')[1];

    var pathToPubspec = '';
    if (pathToSdk.trim().isEmpty) {
      pathToPubspec = './pubspec.yaml';
    } else {
      final parentDirectories = pathToSdk.split('/');
      for (final parent in parentDirectories) {
        if (!parent.contains('.dart') && parent.trim().isNotEmpty) {
          pathToPubspec += '../';
        }
      }
      pathToPubspec += 'pubspec.yaml';
    }

    var fileUri = await Isolate.resolvePackageUri(Uri.file(pathToPubspec));
    if (fileUri == null) return null; // No such pacakge.
    return File.fromUri(fileUri);
  }
  return null;
}

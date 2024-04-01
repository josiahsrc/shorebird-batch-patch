import 'dart:io' as io;

String get shorebirdToken => io.Platform.environment['SHOREBIRD_TOKEN'] ?? '';

import 'dart:io' as io;

const String kShorebirdTokenVarName = 'SHOREBIRD_TOKEN';

String get shorebirdToken =>
    io.Platform.environment[kShorebirdTokenVarName] ?? '';

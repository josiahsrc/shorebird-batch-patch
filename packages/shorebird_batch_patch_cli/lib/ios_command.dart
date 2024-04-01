import 'dart:async';

import 'package:platform/platform.dart';
import 'package:shorebird_batch_patch_cli/script_command.dart';
import 'package:shorebird_batch_patch_cli/shorebird_cli_deps.dart';

class IosCommand extends ScriptCommand {
  @override
  String get description => 'Applies patches to iOS apps.';

  @override
  String get name => 'ios';

  @override
  Future<int> run() async {
    try {
      await shorebirdValidator.validatePreconditions(
        checkShorebirdInitialized: true,
        checkUserIsAuthenticated: true,
        validators: doctor.iosCommandValidators,
        supportedOperatingSystems: {Platform.macOS},
      );
    } on PreconditionFailedException catch (error) {
      return error.exitCode.code;
    }

    print('Running ios command');
    return 0;
  }
}

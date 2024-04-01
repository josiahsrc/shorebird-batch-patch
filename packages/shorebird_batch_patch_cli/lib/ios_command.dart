import 'dart:async';

import 'package:shorebird_batch_patch_cli/script_command.dart';

class IosCommand extends ScriptCommand {
  @override
  String get description => 'Applies patches to iOS apps.';

  @override
  String get name => 'ios';

  @override
  Future<int> run() async {
    print('Running ios command');
    return 0;
  }
}

import 'dart:async';
import 'dart:io';

import 'package:shorebird_batch_patch_cli/script_command_runner.dart';

Future<void> main(List<String> args) async {
  final exitCode = await runZoned(() async => ScriptCommandRunner().run(args));
  await _flushThenExit(exitCode);
}

Future<void> _flushThenExit(int status) {
  return Future.wait<void>([stdout.close(), stderr.close()])
      .then<void>((_) => exit(status));
}

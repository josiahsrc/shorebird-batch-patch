import 'dart:async';
import 'dart:io';

import 'package:scoped/scoped.dart';
import 'package:shorebird_batch_patch_cli/shorebird_cli_deps.dart';
import 'package:shorebird_batch_patch_cli/script_command_runner.dart';

Future<void> main(List<String> args) async {
  final exitCode = await runScoped(
    () async => ScriptCommandRunner().run(args),
    values: {
      authRef,
      shorebirdValidatorRef,
      doctorRef,
      httpClientRef,
      shorebirdEnvRef,
      loggerRef,
    },
  );
  await _flushThenExit(exitCode);
}

Future<void> _flushThenExit(int status) {
  return Future.wait<void>([stdout.close(), stderr.close()])
      .then<void>((_) => exit(status));
}

import 'dart:async';

import 'package:args/command_runner.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:scoped/scoped.dart';
import 'package:shorebird_batch_patch_cli/ios_command.dart';
import 'package:shorebird_batch_patch_cli/shorebird_cli_deps.dart';

const _kExecutable = 'shorebird-batch-patch';
const _kDescription = 'Automatically apply patches to relevant releases.';

class ScriptCommandRunner extends CommandRunner<int> {
  ScriptCommandRunner() : super(_kExecutable, _kDescription) {
    argParser
      ..addFlag(
        'version',
        negatable: false,
        help: 'Print the current version.',
      )
      ..addFlag(
        'verbose',
        abbr: 'v',
        help: 'Noisy logging. Log all the things.',
        callback: (verbose) {
          if (verbose) {
            logger.level = Level.verbose;
          }
        },
      );

    addCommand(IosCommand());
  }

  @override
  Future<int> run(Iterable<String> args) async {
    try {
      logger.detail("Running with args: $args");
      final topLevelResults = parse(args);
      await runScoped(() async => runCommand(topLevelResults));
    } on UsageException catch (e) {
      logger.err(e.message);
      return ExitCode.usage.code;
    }

    return 0;
  }
}

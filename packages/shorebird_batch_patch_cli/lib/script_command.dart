import 'package:args/args.dart';
import 'package:args/command_runner.dart';
import 'package:shorebird_batch_patch_cli/script_command_runner.dart';

abstract class ScriptCommand extends Command<int> {
  @override
  ScriptCommandRunner? get runner => super.runner as ScriptCommandRunner?;

  ArgResults get results => argResults!;
}

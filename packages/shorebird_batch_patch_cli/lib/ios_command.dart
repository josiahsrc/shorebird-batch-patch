import 'dart:async';

import 'package:args/command_runner.dart';

class IosCommand extends Command<int> {
  @override
  String get description => 'Applies patches to iOS apps.';

  @override
  String get name => 'ios';

  @override
  Future<int>? run() async {
    print('Running ios command');
    return 0;
  }
}

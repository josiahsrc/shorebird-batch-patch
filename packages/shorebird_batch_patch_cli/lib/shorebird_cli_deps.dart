// This is terrible, but it means we don't have to duplicate a ton of code. It
// would be better expose these dependencies in a sibling shorebird package.
// Either that or bring this batch script into the shorebird package.

export 'package:shorebird_cli/src/auth/auth.dart';
export 'package:shorebird_cli/src/shorebird_validator.dart';
export 'package:shorebird_cli/src/shorebird_env.dart';
export 'package:shorebird_cli/src/logger.dart';
export 'package:shorebird_cli/src/doctor.dart';
export 'package:shorebird_cli/src/http_client/http_client.dart';

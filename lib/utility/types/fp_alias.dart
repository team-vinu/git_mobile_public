import 'package:fpdart/fpdart.dart' as fp;

import 'package:git_mobile/utility/enums/error.dart';

typedef FpResult<T> = fp.Either<Error, T>;
typedef FpTaskResult<T> = fp.TaskEither<Error, T>;
typedef FpUnit = fp.Unit;

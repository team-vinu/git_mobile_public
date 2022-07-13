import 'package:fpdart/fpdart.dart' as fp;

import 'package:git_mobile/utility/enums/error.dart';

typedef FpEither<L, R> = fp.Either<L, R>;
typedef FpOption<T> = fp.Option<T>;
//typedef FpResult<T> = fp.Either<T, Error>; // TとErrorの位置は逆
typedef FpResult<T> = fp.Either<Error, T>;
typedef FpTaskResult<T> = fp.TaskEither<Error, T>;
typedef FpUnit = fp.Unit;
typedef FpTaskEither<L, R> = fp.TaskEither<L, R>;
typedef FpTaskOption<T> = fp.TaskOption<T>;

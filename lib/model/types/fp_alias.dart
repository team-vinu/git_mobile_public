import 'package:fpdart/fpdart.dart' as fp;

import 'package:git_mobile/model/enums/error.dart';

typedef FpEither<L, R> = fp.Either<L, R>;
typedef FpOption<T> = fp.Option<T>;
typedef FpResult<T> = fp.Either<T, Error>;

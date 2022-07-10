import 'package:fpdart/fpdart.dart' as fp;

import 'package:git_mobile/model/enums/error.dart';

abstract class RepoRepository {
  Future<fp.Either<String, Error>> init();
}

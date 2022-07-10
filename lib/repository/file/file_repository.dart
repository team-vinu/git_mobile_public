import 'package:fpdart/fpdart.dart' as fp;

import 'package:git_mobile/model/enums/error.dart';

abstract class FileRepository {
  Future<fp.Either<String, Error>> openDir();
}

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fpdart/fpdart.dart' as fp;

import 'package:git_mobile/ffi.dart';
import 'package:git_mobile/services/file_picker/pick_dir.dart';
import 'package:git_mobile/utility/enums/error.dart';
import 'package:git_mobile/utility/types/fp_alias.dart';
import 'repo_repository.dart';

final repoRepositoryProvider = Provider(
  (_) => const RepoRepositoryImpl(),
);

class RepoRepositoryImpl implements RepoRepository {
  const RepoRepositoryImpl();
}

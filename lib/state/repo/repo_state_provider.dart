import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fpdart/fpdart.dart' as fp;

import 'package:git_mobile/state/repo/repo_state.dart';
import 'package:git_mobile/model/repo/repo.dart';

final repoStateList = [
  RepoState(
      entity: Repo(
          path: fp.Option<String>.none(), cloneUrl: fp.Option<String>.none())),
];

final repoStateProvider = Provider<RepoState>((ref) {
  return repoStateList[0];
});

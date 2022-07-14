import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:git_mobile/state/repo/repo_state.dart';
import 'package:git_mobile/model/repo/repo.dart';
import 'package:git_mobile/utility/types/fp_alias.dart';

final repoStateList = [
  RepoState(
      entity: Repo(
          path: FpOption<String>.none(), cloneUrl: FpOption<String>.none())),
];

final repoStateProvider = Provider<RepoState>((ref) {
  return repoStateList[0];
});

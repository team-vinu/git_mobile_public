import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:git_mobile/model/repo/repo.dart';

part 'repo_state.freezed.dart';

@freezed
class RepoState with _$RepoState {
  const factory RepoState({
    required Repo entity,
  }) = _RepoState;
}

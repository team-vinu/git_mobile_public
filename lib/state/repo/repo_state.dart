import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo_state.freezed.dart';

@freezed
class RepoState with _$RepoState {
  const factory RepoState({
    @Default("") String initMsg,
    @Default("") String repoOpenMsg,
    @Default("") String repoCloneMsg,
    @Default("") String cloneUrl,
  }) = _RepoState;
}

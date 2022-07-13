import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fpdart/fpdart.dart' as fp;

import 'package:git_mobile/model/repo/repo.dart';
import 'package:git_mobile/repository/repo/repo_repository_impl.dart';
import 'package:git_mobile/ffi.dart';
import 'package:git_mobile/utility/enums/error.dart';
import 'repo_state.dart';

final repoControllerProvider =
    StateNotifierProvider<RepoController, AsyncValue<RepoState?>>((ref) {
  return RepoController(ref.read(repoRepositoryProvider));
});

class RepoController extends StateNotifier<AsyncValue<RepoState>> {
  RepoController(this.repoRepository) : super(const AsyncValue.loading()) {
    _fetch();
  }

  final RepoRepositoryImpl repoRepository;

  void setState(RepoState repoState) {
    state = AsyncValue.data(repoState);
  }

  void _fetch() {
    final repo = Repo(
        path: fp.Option<String>.none(), cloneUrl: fp.Option<String>.none());
    state = AsyncValue.data(RepoState(entity: repo));
  }

  String getRepoInitMsg() {
    return "";
  }

  String getRepoOpenMsg() {
    return "";
  }

  String getRepoCloneMsg() {
    return "";
  }

  Future<void> gitInitDir() async {}

  Future<void> gitOpenDir() async {}

  Future<void> gitClone() async {}

  Future<void> setCloneUrl(String url) async {}
}

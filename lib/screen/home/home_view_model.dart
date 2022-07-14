import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:git_mobile/repository/repo/repo_repository.dart';
import 'package:git_mobile/repository/repo/repo_repository_impl.dart';

final homeViewModelProvider = FutureProvider<HomeViewModel>((ref) {
  return HomeViewModel(repoRepository: ref.read(repoRepositoryProvider));
});

class HomeViewModel {
  HomeViewModel({
    required this.repoRepository,
    this.repoInitMsg = "",
    this.repoOpenMsg = "",
    this.repoCloneMsg = "",
  });

  final RepoRepositoryImpl repoRepository;
  String repoInitMsg;
  String repoOpenMsg;
  String repoCloneMsg;

  Future<void> gitInit() async {
    // do something
  }

  Future<void> gitOpen() async {
    // do something
  }

  Future<void> gitClone() async {
    // do something
  }

  Future<void> setCloneUrl(String url) async {
    // do something
  }
}

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import 'home_state.dart';
import 'package:git_mobile/state/repo/repo_state.dart';
import 'package:git_mobile/state/file/file_state.dart';
import 'package:git_mobile/ffi.dart';

final homeViewModelProvider =
    StateNotifierProvider.autoDispose<HomeViewModel, AsyncValue<RepoState>>(
  (ref) => HomeViewModel(ref: ref),
);

class HomeViewModel extends StateNotifier<AsyncValue<RepoState>> {
  final AutoDisposeStateNotifierProviderRef _ref;
  HomeViewModel({required AutoDisposeStateNotifierProviderRef ref})
      : _ref = ref,
        super(const AsyncLoading()) {
    load();
  }

  // 初期化
  void load() {
    state = const AsyncValue.data(
      RepoState(),
    );
  }

  void gitInitDir() async {
    final status = await Permission.manageExternalStorage.request();
    final getDir = await FilePicker.platform.getDirectoryPath();

    // if (status.isGranted) {
    if (getDir == null) {
      state = AsyncValue.data(RepoState(initMsg: ""));
    } else {
      state =
          AsyncValue.data(RepoState(initMsg: await git.gitInit(dir: getDir)));
    }
  }

  void gitOpenDir() async {
    final status = await Permission.manageExternalStorage.request();
    final pickedDir = await FilePicker.platform.getDirectoryPath();

    // if (status.isGranted) {
    if (pickedDir == null) {
      state =
          AsyncValue.data(RepoState(repoCloneMsg: "Failed to open directory."));
    } else {
      state = AsyncValue.data(
          RepoState(repoCloneMsg: await git.gitOpen(dir: pickedDir)));
    }
  }

  void gitClone() async {
    final status = await Permission.manageExternalStorage.request();
    final pickedDir = await FilePicker.platform.getDirectoryPath();

    if (pickedDir == null) {
      state =
          AsyncValue.data(RepoState(repoOpenMsg: "Failed to open directory."));
    } else {
      state = AsyncValue.data(RepoState(
          repoOpenMsg: await git.gitHttpsClone(
              dir: pickedDir, url: state.value!.cloneUrl)));
    }
  }

  void setCloneUrl(String url) {
    state = AsyncValue.data(RepoState(cloneUrl: url));
  }
}

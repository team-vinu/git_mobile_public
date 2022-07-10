import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import 'home_state.dart';
import 'package:git_mobile/ffi.dart';

final homeViewModelProvider =
    StateNotifierProvider.autoDispose<HomeViewModel, AsyncValue<HomeState>>(
  (ref) => HomeViewModel(ref: ref),
);

class HomeViewModel extends StateNotifier<AsyncValue<HomeState>> {
  final AutoDisposeStateNotifierProviderRef _ref;
  HomeViewModel({required AutoDisposeStateNotifierProviderRef ref})
      : _ref = ref,
        super(const AsyncLoading()) {
    load();
  }

  // 初期化
  void load() {
    state = const AsyncValue.data(
      HomeState(),
    );
  }

  void gitInitDir() async {
    final status = await Permission.manageExternalStorage.request();
    final getDir = await FilePicker.platform.getDirectoryPath();

    // if (status.isGranted) {
    if (getDir == null) {
      state = AsyncValue.data(HomeState(initMsg: ""));
    } else {
      state =
          AsyncValue.data(HomeState(initMsg: await api.gitInit(dir: getDir)));
    }
  }

  void gitOpenDir() async {
    final status = await Permission.manageExternalStorage.request();
    final pickedDir = await FilePicker.platform.getDirectoryPath();

    // if (status.isGranted) {
    if (pickedDir == null) {
      state =
          AsyncValue.data(HomeState(repoCloneMsg: "Failed to open directory."));
    } else {
      state = AsyncValue.data(
          HomeState(repoCloneMsg: await api.gitOpen(dir: pickedDir)));
    }
  }

  void gitClone() async {
    final status = await Permission.manageExternalStorage.request();
    final pickedDir = await FilePicker.platform.getDirectoryPath();

    if (pickedDir == null) {
      state =
          AsyncValue.data(HomeState(repoOpenMsg: "Failed to open directory."));
    } else {
      state = AsyncValue.data(HomeState(
          repoOpenMsg: await api.gitHttpsClone(
              dir: pickedDir, url: state.value!.cloneUrl)));
    }
  }

  void setCloneUrl(String url) {
    state = AsyncValue.data(HomeState(cloneUrl: url));
  }
}

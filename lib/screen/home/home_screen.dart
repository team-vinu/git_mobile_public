import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:git_mobile/gen/assets.gen.dart';
import 'package:git_mobile/state/repo/repo_controller.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(repoControllerProvider);
    final viewModel = ref.watch(repoControllerProvider.notifier);

    return state.when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Git Mobile"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Assets.images.gitIcon.svg(width: 200),
                ElevatedButton(
                  onPressed: viewModel.gitInitDir,
                  child: const Text('init'),
                ),
                const Text(
                  'The repository init: ',
                ),
                Text(
                  viewModel.getRepoInitMsg(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                ElevatedButton(
                  onPressed: viewModel.gitOpenDir,
                  child: const Text('open'),
                ),
                const Text(
                  'The repository opened: ',
                ),
                Text(
                  viewModel.getRepoOpenMsg(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                ElevatedButton(
                  onPressed: viewModel.gitClone,
                  child: const Text('Clone'),
                ),
                TextField(
                  decoration: InputDecoration(hintText: "Clone URL"),
                  onChanged: (url) => viewModel.setCloneUrl(url),
                ),
                Text(
                  viewModel.getRepoCloneMsg(),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
        );
      },
      error: (e, msg) => Text(e.toString()),
      loading: () {
        return const Scaffold(
          body: SafeArea(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }
}

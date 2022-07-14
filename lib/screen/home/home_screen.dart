import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:git_mobile/gen/assets.gen.dart';
import 'home_view_model.dart';
import 'package:git_mobile/state/repo/repo_state_provider.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(homeViewModelProvider);
    final repoState = ref.watch(repoStateProvider);

    return viewModel.when(
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
                  onPressed: data.gitInit,
                  child: const Text('init'),
                ),
                const Text(
                  'The repository init: ',
                ),
                Text(
                  data.repoInitMsg,
                  style: Theme.of(context).textTheme.headline4,
                ),
                ElevatedButton(
                  onPressed: data.gitOpen,
                  child: const Text('open'),
                ),
                const Text(
                  'The repository opened: ',
                ),
                Text(
                  data.repoOpenMsg,
                  style: Theme.of(context).textTheme.headline4,
                ),
                ElevatedButton(
                  onPressed: data.gitClone,
                  child: const Text('Clone'),
                ),
                TextField(
                  decoration: InputDecoration(hintText: "Clone URL"),
                  onChanged: (url) => data.setCloneUrl(url),
                ),
                Text(
                  data.repoCloneMsg,
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

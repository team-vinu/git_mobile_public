import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:git_mobile/gen/assets.gen.dart';
import 'home_view_model.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
<<<<<<< HEAD:lib/screen/home/home_page.dart
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _initMsg = "";
  String _repoOpenMsg = "";
  String _repoCloneMsg = "";
  String _cloneUrl = "";

  void _gitInitDir() async {
    final getDir = await FilePicker.platform.getDirectoryPath();
    String dirState = "";

    final status = await Permission.manageExternalStorage.request();

    // if (status.isGranted) {
    if (getDir == null) {
      dirState = "";
    } else {
      dirState = await git.gitInit(dir: getDir);
    }
    setState(() {
      _initMsg = dirState;
    });
  }

  void _gitOpenDir() async {
    final pickedDir = await FilePicker.platform.getDirectoryPath();
    String msg = "";

    final status = await Permission.manageExternalStorage.request();

    // if (status.isGranted) {
    if (pickedDir == null) {
      msg = "Failed to open directory.";
    } else {
      msg = await git.gitOpen(dir: pickedDir);
    }
    setState(() {
      _repoCloneMsg = msg;
    });
  }

  void _gitClone() async {
    final pickedDir = await FilePicker.platform.getDirectoryPath();
    String msg = "";

    final status = await Permission.manageExternalStorage.request();

    if (pickedDir == null) {
      msg = "Failed to open directory.";
    } else {
      msg = await git.gitHttpsClone(dir: pickedDir, url: _cloneUrl);
    }
    setState(() {
      _repoOpenMsg = msg;
    });
  }

  @override
  Widget build(BuildContext context) {
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
              onPressed: _gitInitDir,
              child: const Text('init'),
            ),
            const Text(
              'The repository init: ',
            ),
            Text(
              _initMsg,
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: _gitOpenDir,
              child: const Text('open'),
            ),
            const Text(
              'The repository opened: ',
            ),
            Text(
              _repoOpenMsg,
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: _gitClone,
              child: const Text('Clone'),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Clone URL"),
              onChanged: (url) {
                _cloneUrl = url;
              },
=======
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeViewModelProvider);
    final viewModel = ref.watch(homeViewModelProvider.notifier);

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
                  data.initMsg,
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
                  data.repoOpenMsg,
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
                  data.repoCloneMsg,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
>>>>>>> flutter:lib/screen/home/home_screen.dart
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

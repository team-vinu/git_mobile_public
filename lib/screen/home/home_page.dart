import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:git_mobile/gen/assets.gen.dart';
import 'package:git_mobile/ffi.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
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
      dirState = await api.gitInit(dir: getDir);
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
      msg = await api.gitOpen(dir: pickedDir);
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
      msg = await api.gitHttpsClone(dir: pickedDir, url: _cloneUrl);
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
            ),
            Text(
              _repoCloneMsg,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:io' as io;

import 'package:flutter/material.dart';
import '../ffi.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import '../gen/assets.gen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        title: Text(widget.title),
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

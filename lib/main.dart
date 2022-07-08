import 'dart:io' as io;

import 'package:flutter/material.dart';
import 'ffi.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Git Mobile',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Git Mobile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _initMsg = "";
  String _repoOpenMsg = "";

  void _gitInitDir() async {
    final getDir = await FilePicker.platform.getDirectoryPath();
    String dirState = "";

    await Permission.manageExternalStorage.request();

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

    if (pickedDir == null) {
      msg = "Failed to open directory.";
    } else {
      msg = await api.gitOpen(dir: pickedDir);
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
          ],
        ),
      ),
    );
  }
}

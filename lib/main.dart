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
  String _isOpened = "";

  void _gitInitDirectory() async {
    final _getDirectory = await FilePicker.platform.getDirectoryPath();
    String _dirState = "";

    await Permission.manageExternalStorage.request();

    if (_getDirectory == null) {
      _dirState = "";
    } else {
      _dirState = await api.gitInit(dir: _getDirectory);
    }
    setState(() {
      _isOpened = _dirState;
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
              onPressed: _gitInitDirectory,
              child: const Text('init'),
            ),
            const Text(
              'The repository opened: ',
            ),
            Text(
              '$_isOpened',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _gitInitDirectory,
        tooltip: 'open a directory',
        child: const Icon(Icons.add),
      ),
    );
  }
}

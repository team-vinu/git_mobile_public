import 'dart:io' as io;

import 'package:flutter/material.dart';
import 'ffi.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'gen/assets.gen.dart';

import 'screen/home_page.dart';

final repoProvider =
    StateNotifierProvider<RepoController, String>((ref) => RepoController(ref));

class RepoController extends StateNotifier<String> {
  RepoController(this.ref) : super("");
  final Ref ref;

  Future<String> getDir() async {
    String? ret = await FilePicker.platform.getDirectoryPath();
    return ret!;
  }
}

/*
void main() {
  runApp(const ProviderScope(child: MyApp()));
}
*/
void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Git Mobile',
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark(),
      home: const MyHomePage(title: 'Git Mobile'),
    );
  }
}

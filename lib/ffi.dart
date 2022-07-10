// This file initializes the dynamic library and connects it with the stub
// generated by flutter_rust_bridge_codegen.

import 'dart:ffi';

import 'bridge_generated/api.dart';
import 'bridge_generated/git.dart';
import 'bridge_generated/ssh.dart';
// Re-export the bridge so it is only necessary to import this file.
// export 'bridge_generated.dart';
import 'dart:io' as io;

const _base = 'libgit2_bindings';

// On MacOS, the dynamic library is not bundled with the binary,
// but rather directly **linked** against the binary.
final _dylib = io.Platform.isWindows ? '$_base.dll' : 'lib$_base.so';

// The late modifier delays initializing the value until it is actually needed,
// leaving precious little time for the program to quickly start up.
late final ApiPlatform api = ApiPlatformImpl(
    io.Platform.isIOS ? DynamicLibrary.process() : DynamicLibrary.open(_dylib));

late final ApiGit git = ApiGitImpl(
    io.Platform.isIOS ? DynamicLibrary.process() : DynamicLibrary.open(_dylib));

late final ApiSsh ssh = ApiSshImpl(
    io.Platform.isIOS ? DynamicLibrary.process() : DynamicLibrary.open(_dylib));

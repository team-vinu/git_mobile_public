// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`.

// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports

import 'dart:convert';
import 'dart:typed_data';

import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'dart:ffi' as ffi;

abstract class ApiGit {
  Future<String> gitHttpsClone(
      {required String dir, required String url, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGitHttpsCloneConstMeta;

  Future<String> gitHttpClone(
      {required String dir, required String url, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGitHttpCloneConstMeta;

  Future<String> gitAdd(
      {required String dir, required String file, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGitAddConstMeta;

  Future<String> gitCommit(
      {required String dir, required String msg, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGitCommitConstMeta;

  Future<String> gitInit({required String dir, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGitInitConstMeta;

  Future<String> gitOpen({required String dir, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGitOpenConstMeta;
}

class ApiGitImpl extends FlutterRustBridgeBase<ApiGitWire> implements ApiGit {
  factory ApiGitImpl(ffi.DynamicLibrary dylib) =>
      ApiGitImpl.raw(ApiGitWire(dylib));

  ApiGitImpl.raw(ApiGitWire inner) : super(inner);

  Future<String> gitHttpsClone(
          {required String dir, required String url, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_git_https_clone(
            port_, _api2wire_String(dir), _api2wire_String(url)),
        parseSuccessData: _wire2api_String,
        constMeta: kGitHttpsCloneConstMeta,
        argValues: [dir, url],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kGitHttpsCloneConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "git_https_clone",
        argNames: ["dir", "url"],
      );

  Future<String> gitHttpClone(
          {required String dir, required String url, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_git_http_clone(
            port_, _api2wire_String(dir), _api2wire_String(url)),
        parseSuccessData: _wire2api_String,
        constMeta: kGitHttpCloneConstMeta,
        argValues: [dir, url],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kGitHttpCloneConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "git_http_clone",
        argNames: ["dir", "url"],
      );

  Future<String> gitAdd(
          {required String dir, required String file, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_git_add(
            port_, _api2wire_String(dir), _api2wire_String(file)),
        parseSuccessData: _wire2api_String,
        constMeta: kGitAddConstMeta,
        argValues: [dir, file],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kGitAddConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "git_add",
        argNames: ["dir", "file"],
      );

  Future<String> gitCommit(
          {required String dir, required String msg, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_git_commit(
            port_, _api2wire_String(dir), _api2wire_String(msg)),
        parseSuccessData: _wire2api_String,
        constMeta: kGitCommitConstMeta,
        argValues: [dir, msg],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kGitCommitConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "git_commit",
        argNames: ["dir", "msg"],
      );

  Future<String> gitInit({required String dir, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_git_init(port_, _api2wire_String(dir)),
        parseSuccessData: _wire2api_String,
        constMeta: kGitInitConstMeta,
        argValues: [dir],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kGitInitConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "git_init",
        argNames: ["dir"],
      );

  Future<String> gitOpen({required String dir, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_git_open(port_, _api2wire_String(dir)),
        parseSuccessData: _wire2api_String,
        constMeta: kGitOpenConstMeta,
        argValues: [dir],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kGitOpenConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "git_open",
        argNames: ["dir"],
      );

  // Section: api2wire
  ffi.Pointer<wire_uint_8_list> _api2wire_String(String raw) {
    return _api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  int _api2wire_u8(int raw) {
    return raw;
  }

  ffi.Pointer<wire_uint_8_list> _api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_1(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }

  // Section: api_fill_to_wire

}

// Section: wire2api
String _wire2api_String(dynamic raw) {
  return raw as String;
}

int _wire2api_u8(dynamic raw) {
  return raw as int;
}

Uint8List _wire2api_uint_8_list(dynamic raw) {
  return raw as Uint8List;
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class ApiGitWire implements FlutterRustBridgeWireBase {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  ApiGitWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  ApiGitWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void free_WireSyncReturnStruct(
    WireSyncReturnStruct val,
  ) {
    return _free_WireSyncReturnStruct(
      val,
    );
  }

  late final _free_WireSyncReturnStructPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturnStruct)>>(
          'free_WireSyncReturnStruct');
  late final _free_WireSyncReturnStruct = _free_WireSyncReturnStructPtr
      .asFunction<void Function(WireSyncReturnStruct)>();

  void wire_git_https_clone(
    int port_,
    ffi.Pointer<wire_uint_8_list> dir,
    ffi.Pointer<wire_uint_8_list> url,
  ) {
    return _wire_git_https_clone(
      port_,
      dir,
      url,
    );
  }

  late final _wire_git_https_clonePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_git_https_clone');
  late final _wire_git_https_clone = _wire_git_https_clonePtr.asFunction<
      void Function(
          int, ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_uint_8_list>)>();

  void wire_git_http_clone(
    int port_,
    ffi.Pointer<wire_uint_8_list> dir,
    ffi.Pointer<wire_uint_8_list> url,
  ) {
    return _wire_git_http_clone(
      port_,
      dir,
      url,
    );
  }

  late final _wire_git_http_clonePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_git_http_clone');
  late final _wire_git_http_clone = _wire_git_http_clonePtr.asFunction<
      void Function(
          int, ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_uint_8_list>)>();

  void wire_git_add(
    int port_,
    ffi.Pointer<wire_uint_8_list> dir,
    ffi.Pointer<wire_uint_8_list> file,
  ) {
    return _wire_git_add(
      port_,
      dir,
      file,
    );
  }

  late final _wire_git_addPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_git_add');
  late final _wire_git_add = _wire_git_addPtr.asFunction<
      void Function(
          int, ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_uint_8_list>)>();

  void wire_git_commit(
    int port_,
    ffi.Pointer<wire_uint_8_list> dir,
    ffi.Pointer<wire_uint_8_list> msg,
  ) {
    return _wire_git_commit(
      port_,
      dir,
      msg,
    );
  }

  late final _wire_git_commitPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_git_commit');
  late final _wire_git_commit = _wire_git_commitPtr.asFunction<
      void Function(
          int, ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_uint_8_list>)>();

  void wire_git_init(
    int port_,
    ffi.Pointer<wire_uint_8_list> dir,
  ) {
    return _wire_git_init(
      port_,
      dir,
    );
  }

  late final _wire_git_initPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>('wire_git_init');
  late final _wire_git_init = _wire_git_initPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_git_open(
    int port_,
    ffi.Pointer<wire_uint_8_list> dir,
  ) {
    return _wire_git_open(
      port_,
      dir,
    );
  }

  late final _wire_git_openPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>('wire_git_open');
  late final _wire_git_open = _wire_git_openPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_1(
    int len,
  ) {
    return _new_uint_8_list_1(
      len,
    );
  }

  late final _new_uint_8_list_1Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_1');
  late final _new_uint_8_list_1 = _new_uint_8_list_1Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();
}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;

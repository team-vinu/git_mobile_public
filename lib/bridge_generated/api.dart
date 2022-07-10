// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`.

// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports

import 'dart:convert';
import 'dart:typed_data';

import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'dart:ffi' as ffi;

abstract class ApiPlatform {
  Future<KeyPair?> sshKeygen(
      {String? passwd, required Algorithm algorithm, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSshKeygenConstMeta;

  Future<Platform> platform({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kPlatformConstMeta;

  Future<bool> rustReleaseMode({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kRustReleaseModeConstMeta;
}

enum Algorithm {
  Rsa,
  Dsa,
  Ed25519,
}

class KeyPair {
  final Uint8List pubkey;
  final Uint8List privkey;

  KeyPair({
    required this.pubkey,
    required this.privkey,
  });
}

enum Platform {
  Unknown,
  Android,
  Ios,
  Unix,
}

class ApiPlatformImpl extends FlutterRustBridgeBase<ApiPlatformWire>
    implements ApiPlatform {
  factory ApiPlatformImpl(ffi.DynamicLibrary dylib) =>
      ApiPlatformImpl.raw(ApiPlatformWire(dylib));

  ApiPlatformImpl.raw(ApiPlatformWire inner) : super(inner);

  Future<KeyPair?> sshKeygen(
          {String? passwd, required Algorithm algorithm, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_ssh_keygen(port_,
            _api2wire_opt_String(passwd), _api2wire_algorithm(algorithm)),
        parseSuccessData: _wire2api_opt_box_autoadd_key_pair,
        constMeta: kSshKeygenConstMeta,
        argValues: [passwd, algorithm],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kSshKeygenConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "ssh_keygen",
        argNames: ["passwd", "algorithm"],
      );

  Future<Platform> platform({dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_platform(port_),
        parseSuccessData: _wire2api_platform,
        constMeta: kPlatformConstMeta,
        argValues: [],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kPlatformConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "platform",
        argNames: [],
      );

  Future<bool> rustReleaseMode({dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_rust_release_mode(port_),
        parseSuccessData: _wire2api_bool,
        constMeta: kRustReleaseModeConstMeta,
        argValues: [],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kRustReleaseModeConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "rust_release_mode",
        argNames: [],
      );

  // Section: api2wire
  ffi.Pointer<wire_uint_8_list> _api2wire_String(String raw) {
    return _api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  int _api2wire_algorithm(Algorithm raw) {
    return raw.index;
  }

  ffi.Pointer<wire_uint_8_list> _api2wire_opt_String(String? raw) {
    return raw == null ? ffi.nullptr : _api2wire_String(raw);
  }

  int _api2wire_u8(int raw) {
    return raw;
  }

  ffi.Pointer<wire_uint_8_list> _api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }

  // Section: api_fill_to_wire

}

// Section: wire2api
bool _wire2api_bool(dynamic raw) {
  return raw as bool;
}

KeyPair _wire2api_box_autoadd_key_pair(dynamic raw) {
  return _wire2api_key_pair(raw);
}

KeyPair _wire2api_key_pair(dynamic raw) {
  final arr = raw as List<dynamic>;
  if (arr.length != 2)
    throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
  return KeyPair(
    pubkey: _wire2api_uint_8_list(arr[0]),
    privkey: _wire2api_uint_8_list(arr[1]),
  );
}

KeyPair? _wire2api_opt_box_autoadd_key_pair(dynamic raw) {
  return raw == null ? null : _wire2api_box_autoadd_key_pair(raw);
}

Platform _wire2api_platform(dynamic raw) {
  return Platform.values[raw];
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
class ApiPlatformWire implements FlutterRustBridgeWireBase {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  ApiPlatformWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  ApiPlatformWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void wire_ssh_keygen(
    int port_,
    ffi.Pointer<wire_uint_8_list> passwd,
    int algorithm,
  ) {
    return _wire_ssh_keygen(
      port_,
      passwd,
      algorithm,
    );
  }

  late final _wire_ssh_keygenPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Int32)>>('wire_ssh_keygen');
  late final _wire_ssh_keygen = _wire_ssh_keygenPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>, int)>();

  void wire_platform(
    int port_,
  ) {
    return _wire_platform(
      port_,
    );
  }

  late final _wire_platformPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_platform');
  late final _wire_platform =
      _wire_platformPtr.asFunction<void Function(int)>();

  void wire_rust_release_mode(
    int port_,
  ) {
    return _wire_rust_release_mode(
      port_,
    );
  }

  late final _wire_rust_release_modePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_rust_release_mode');
  late final _wire_rust_release_mode =
      _wire_rust_release_modePtr.asFunction<void Function(int)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

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

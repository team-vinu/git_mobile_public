// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Repo {
  fp.Option<String> get path => throw _privateConstructorUsedError;
  fp.Option<String> get cloneUrl => throw _privateConstructorUsedError;
  String get initMsg => throw _privateConstructorUsedError;
  String get openMsg => throw _privateConstructorUsedError;
  String get cloneMsg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoCopyWith<Repo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoCopyWith<$Res> {
  factory $RepoCopyWith(Repo value, $Res Function(Repo) then) =
      _$RepoCopyWithImpl<$Res>;
  $Res call(
      {fp.Option<String> path,
      fp.Option<String> cloneUrl,
      String initMsg,
      String openMsg,
      String cloneMsg});
}

/// @nodoc
class _$RepoCopyWithImpl<$Res> implements $RepoCopyWith<$Res> {
  _$RepoCopyWithImpl(this._value, this._then);

  final Repo _value;
  // ignore: unused_field
  final $Res Function(Repo) _then;

  @override
  $Res call({
    Object? path = freezed,
    Object? cloneUrl = freezed,
    Object? initMsg = freezed,
    Object? openMsg = freezed,
    Object? cloneMsg = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as fp.Option<String>,
      cloneUrl: cloneUrl == freezed
          ? _value.cloneUrl
          : cloneUrl // ignore: cast_nullable_to_non_nullable
              as fp.Option<String>,
      initMsg: initMsg == freezed
          ? _value.initMsg
          : initMsg // ignore: cast_nullable_to_non_nullable
              as String,
      openMsg: openMsg == freezed
          ? _value.openMsg
          : openMsg // ignore: cast_nullable_to_non_nullable
              as String,
      cloneMsg: cloneMsg == freezed
          ? _value.cloneMsg
          : cloneMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RepoCopyWith<$Res> implements $RepoCopyWith<$Res> {
  factory _$$_RepoCopyWith(_$_Repo value, $Res Function(_$_Repo) then) =
      __$$_RepoCopyWithImpl<$Res>;
  @override
  $Res call(
      {fp.Option<String> path,
      fp.Option<String> cloneUrl,
      String initMsg,
      String openMsg,
      String cloneMsg});
}

/// @nodoc
class __$$_RepoCopyWithImpl<$Res> extends _$RepoCopyWithImpl<$Res>
    implements _$$_RepoCopyWith<$Res> {
  __$$_RepoCopyWithImpl(_$_Repo _value, $Res Function(_$_Repo) _then)
      : super(_value, (v) => _then(v as _$_Repo));

  @override
  _$_Repo get _value => super._value as _$_Repo;

  @override
  $Res call({
    Object? path = freezed,
    Object? cloneUrl = freezed,
    Object? initMsg = freezed,
    Object? openMsg = freezed,
    Object? cloneMsg = freezed,
  }) {
    return _then(_$_Repo(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as fp.Option<String>,
      cloneUrl: cloneUrl == freezed
          ? _value.cloneUrl
          : cloneUrl // ignore: cast_nullable_to_non_nullable
              as fp.Option<String>,
      initMsg: initMsg == freezed
          ? _value.initMsg
          : initMsg // ignore: cast_nullable_to_non_nullable
              as String,
      openMsg: openMsg == freezed
          ? _value.openMsg
          : openMsg // ignore: cast_nullable_to_non_nullable
              as String,
      cloneMsg: cloneMsg == freezed
          ? _value.cloneMsg
          : cloneMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Repo implements _Repo {
  const _$_Repo(
      {required this.path,
      required this.cloneUrl,
      this.initMsg = "This repository is not initialized.",
      this.openMsg = "No repository opened.",
      this.cloneMsg = "This repository is not cloned."});

  @override
  final fp.Option<String> path;
  @override
  final fp.Option<String> cloneUrl;
  @override
  @JsonKey()
  final String initMsg;
  @override
  @JsonKey()
  final String openMsg;
  @override
  @JsonKey()
  final String cloneMsg;

  @override
  String toString() {
    return 'Repo(path: $path, cloneUrl: $cloneUrl, initMsg: $initMsg, openMsg: $openMsg, cloneMsg: $cloneMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Repo &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.cloneUrl, cloneUrl) &&
            const DeepCollectionEquality().equals(other.initMsg, initMsg) &&
            const DeepCollectionEquality().equals(other.openMsg, openMsg) &&
            const DeepCollectionEquality().equals(other.cloneMsg, cloneMsg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(cloneUrl),
      const DeepCollectionEquality().hash(initMsg),
      const DeepCollectionEquality().hash(openMsg),
      const DeepCollectionEquality().hash(cloneMsg));

  @JsonKey(ignore: true)
  @override
  _$$_RepoCopyWith<_$_Repo> get copyWith =>
      __$$_RepoCopyWithImpl<_$_Repo>(this, _$identity);
}

abstract class _Repo implements Repo {
  const factory _Repo(
      {required final fp.Option<String> path,
      required final fp.Option<String> cloneUrl,
      final String initMsg,
      final String openMsg,
      final String cloneMsg}) = _$_Repo;

  @override
  fp.Option<String> get path;
  @override
  fp.Option<String> get cloneUrl;
  @override
  String get initMsg;
  @override
  String get openMsg;
  @override
  String get cloneMsg;
  @override
  @JsonKey(ignore: true)
  _$$_RepoCopyWith<_$_Repo> get copyWith => throw _privateConstructorUsedError;
}

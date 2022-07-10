// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepoState {
  String get initMsg => throw _privateConstructorUsedError;
  String get repoOpenMsg => throw _privateConstructorUsedError;
  String get repoCloneMsg => throw _privateConstructorUsedError;
  String get cloneUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoStateCopyWith<RepoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoStateCopyWith<$Res> {
  factory $RepoStateCopyWith(RepoState value, $Res Function(RepoState) then) =
      _$RepoStateCopyWithImpl<$Res>;
  $Res call(
      {String initMsg,
      String repoOpenMsg,
      String repoCloneMsg,
      String cloneUrl});
}

/// @nodoc
class _$RepoStateCopyWithImpl<$Res> implements $RepoStateCopyWith<$Res> {
  _$RepoStateCopyWithImpl(this._value, this._then);

  final RepoState _value;
  // ignore: unused_field
  final $Res Function(RepoState) _then;

  @override
  $Res call({
    Object? initMsg = freezed,
    Object? repoOpenMsg = freezed,
    Object? repoCloneMsg = freezed,
    Object? cloneUrl = freezed,
  }) {
    return _then(_value.copyWith(
      initMsg: initMsg == freezed
          ? _value.initMsg
          : initMsg // ignore: cast_nullable_to_non_nullable
              as String,
      repoOpenMsg: repoOpenMsg == freezed
          ? _value.repoOpenMsg
          : repoOpenMsg // ignore: cast_nullable_to_non_nullable
              as String,
      repoCloneMsg: repoCloneMsg == freezed
          ? _value.repoCloneMsg
          : repoCloneMsg // ignore: cast_nullable_to_non_nullable
              as String,
      cloneUrl: cloneUrl == freezed
          ? _value.cloneUrl
          : cloneUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RepoStateCopyWith<$Res> implements $RepoStateCopyWith<$Res> {
  factory _$$_RepoStateCopyWith(
          _$_RepoState value, $Res Function(_$_RepoState) then) =
      __$$_RepoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String initMsg,
      String repoOpenMsg,
      String repoCloneMsg,
      String cloneUrl});
}

/// @nodoc
class __$$_RepoStateCopyWithImpl<$Res> extends _$RepoStateCopyWithImpl<$Res>
    implements _$$_RepoStateCopyWith<$Res> {
  __$$_RepoStateCopyWithImpl(
      _$_RepoState _value, $Res Function(_$_RepoState) _then)
      : super(_value, (v) => _then(v as _$_RepoState));

  @override
  _$_RepoState get _value => super._value as _$_RepoState;

  @override
  $Res call({
    Object? initMsg = freezed,
    Object? repoOpenMsg = freezed,
    Object? repoCloneMsg = freezed,
    Object? cloneUrl = freezed,
  }) {
    return _then(_$_RepoState(
      initMsg: initMsg == freezed
          ? _value.initMsg
          : initMsg // ignore: cast_nullable_to_non_nullable
              as String,
      repoOpenMsg: repoOpenMsg == freezed
          ? _value.repoOpenMsg
          : repoOpenMsg // ignore: cast_nullable_to_non_nullable
              as String,
      repoCloneMsg: repoCloneMsg == freezed
          ? _value.repoCloneMsg
          : repoCloneMsg // ignore: cast_nullable_to_non_nullable
              as String,
      cloneUrl: cloneUrl == freezed
          ? _value.cloneUrl
          : cloneUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RepoState implements _RepoState {
  const _$_RepoState(
      {this.initMsg = "",
      this.repoOpenMsg = "",
      this.repoCloneMsg = "",
      this.cloneUrl = ""});

  @override
  @JsonKey()
  final String initMsg;
  @override
  @JsonKey()
  final String repoOpenMsg;
  @override
  @JsonKey()
  final String repoCloneMsg;
  @override
  @JsonKey()
  final String cloneUrl;

  @override
  String toString() {
    return 'RepoState(initMsg: $initMsg, repoOpenMsg: $repoOpenMsg, repoCloneMsg: $repoCloneMsg, cloneUrl: $cloneUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepoState &&
            const DeepCollectionEquality().equals(other.initMsg, initMsg) &&
            const DeepCollectionEquality()
                .equals(other.repoOpenMsg, repoOpenMsg) &&
            const DeepCollectionEquality()
                .equals(other.repoCloneMsg, repoCloneMsg) &&
            const DeepCollectionEquality().equals(other.cloneUrl, cloneUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initMsg),
      const DeepCollectionEquality().hash(repoOpenMsg),
      const DeepCollectionEquality().hash(repoCloneMsg),
      const DeepCollectionEquality().hash(cloneUrl));

  @JsonKey(ignore: true)
  @override
  _$$_RepoStateCopyWith<_$_RepoState> get copyWith =>
      __$$_RepoStateCopyWithImpl<_$_RepoState>(this, _$identity);
}

abstract class _RepoState implements RepoState {
  const factory _RepoState(
      {final String initMsg,
      final String repoOpenMsg,
      final String repoCloneMsg,
      final String cloneUrl}) = _$_RepoState;

  @override
  String get initMsg;
  @override
  String get repoOpenMsg;
  @override
  String get repoCloneMsg;
  @override
  String get cloneUrl;
  @override
  @JsonKey(ignore: true)
  _$$_RepoStateCopyWith<_$_RepoState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FileState {
  fp.Option<String> get dirOpenMsg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileStateCopyWith<FileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileStateCopyWith<$Res> {
  factory $FileStateCopyWith(FileState value, $Res Function(FileState) then) =
      _$FileStateCopyWithImpl<$Res>;
  $Res call({fp.Option<String> dirOpenMsg});
}

/// @nodoc
class _$FileStateCopyWithImpl<$Res> implements $FileStateCopyWith<$Res> {
  _$FileStateCopyWithImpl(this._value, this._then);

  final FileState _value;
  // ignore: unused_field
  final $Res Function(FileState) _then;

  @override
  $Res call({
    Object? dirOpenMsg = freezed,
  }) {
    return _then(_value.copyWith(
      dirOpenMsg: dirOpenMsg == freezed
          ? _value.dirOpenMsg
          : dirOpenMsg // ignore: cast_nullable_to_non_nullable
              as fp.Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_FileStateCopyWith<$Res> implements $FileStateCopyWith<$Res> {
  factory _$$_FileStateCopyWith(
          _$_FileState value, $Res Function(_$_FileState) then) =
      __$$_FileStateCopyWithImpl<$Res>;
  @override
  $Res call({fp.Option<String> dirOpenMsg});
}

/// @nodoc
class __$$_FileStateCopyWithImpl<$Res> extends _$FileStateCopyWithImpl<$Res>
    implements _$$_FileStateCopyWith<$Res> {
  __$$_FileStateCopyWithImpl(
      _$_FileState _value, $Res Function(_$_FileState) _then)
      : super(_value, (v) => _then(v as _$_FileState));

  @override
  _$_FileState get _value => super._value as _$_FileState;

  @override
  $Res call({
    Object? dirOpenMsg = freezed,
  }) {
    return _then(_$_FileState(
      dirOpenMsg: dirOpenMsg == freezed
          ? _value.dirOpenMsg
          : dirOpenMsg // ignore: cast_nullable_to_non_nullable
              as fp.Option<String>,
    ));
  }
}

/// @nodoc

class _$_FileState implements _FileState {
  const _$_FileState({required this.dirOpenMsg});

  @override
  final fp.Option<String> dirOpenMsg;

  @override
  String toString() {
    return 'FileState(dirOpenMsg: $dirOpenMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileState &&
            const DeepCollectionEquality()
                .equals(other.dirOpenMsg, dirOpenMsg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dirOpenMsg));

  @JsonKey(ignore: true)
  @override
  _$$_FileStateCopyWith<_$_FileState> get copyWith =>
      __$$_FileStateCopyWithImpl<_$_FileState>(this, _$identity);
}

abstract class _FileState implements FileState {
  const factory _FileState({required final fp.Option<String> dirOpenMsg}) =
      _$_FileState;

  @override
  fp.Option<String> get dirOpenMsg;
  @override
  @JsonKey(ignore: true)
  _$$_FileStateCopyWith<_$_FileState> get copyWith =>
      throw _privateConstructorUsedError;
}

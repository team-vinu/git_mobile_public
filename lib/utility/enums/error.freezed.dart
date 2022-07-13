// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Error {
  core.Object get error => throw _privateConstructorUsedError;
  Option<StackTrace> get stackTrace => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        ioError,
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        fileError,
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        directorySelectionError,
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        gitError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(core.Object error, Option<StackTrace> stackTrace)? ioError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        fileError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        directorySelectionError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        gitError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(core.Object error, Option<StackTrace> stackTrace)? ioError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        fileError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        directorySelectionError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        gitError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) ioError,
    required TResult Function(_Error value) fileError,
    required TResult Function(_Error value) directorySelectionError,
    required TResult Function(_Error value) gitError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Error value)? ioError,
    TResult Function(_Error value)? fileError,
    TResult Function(_Error value)? directorySelectionError,
    TResult Function(_Error value)? gitError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? ioError,
    TResult Function(_Error value)? fileError,
    TResult Function(_Error value)? directorySelectionError,
    TResult Function(_Error value)? gitError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({core.Object error, Option<StackTrace> stackTrace});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._value, this._then);

  final Error _value;
  // ignore: unused_field
  final $Res Function(Error) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as core.Object,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as Option<StackTrace>,
    ));
  }
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> implements $ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  $Res call({core.Object error, Option<StackTrace> stackTrace});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$ErrorCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as core.Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as Option<StackTrace>,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error, this.stackTrace);

  @override
  final core.Object error;
  @override
  final Option<StackTrace> stackTrace;

  @override
  String toString() {
    return 'Error.ioError(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        ioError,
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        fileError,
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        directorySelectionError,
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        gitError,
  }) {
    return ioError(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(core.Object error, Option<StackTrace> stackTrace)? ioError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        fileError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        directorySelectionError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        gitError,
  }) {
    return ioError?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(core.Object error, Option<StackTrace> stackTrace)? ioError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        fileError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        directorySelectionError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        gitError,
    required TResult orElse(),
  }) {
    if (ioError != null) {
      return ioError(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) ioError,
    required TResult Function(_Error value) fileError,
    required TResult Function(_Error value) directorySelectionError,
    required TResult Function(_Error value) gitError,
  }) {
    return ioError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Error value)? ioError,
    TResult Function(_Error value)? fileError,
    TResult Function(_Error value)? directorySelectionError,
    TResult Function(_Error value)? gitError,
  }) {
    return ioError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? ioError,
    TResult Function(_Error value)? fileError,
    TResult Function(_Error value)? directorySelectionError,
    TResult Function(_Error value)? gitError,
    required TResult orElse(),
  }) {
    if (ioError != null) {
      return ioError(this);
    }
    return orElse();
  }
}

abstract class _Error implements Error {
  const factory _Error(
      final core.Object error, final Option<StackTrace> stackTrace) = _$_Error;

  @override
  core.Object get error;
  @override
  Option<StackTrace> get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> implements $ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  $Res call({core.Object error, Option<StackTrace> stackTrace});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$ErrorCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as core.Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as Option<StackTrace>,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error, this.stackTrace);

  @override
  final core.Object error;
  @override
  final Option<StackTrace> stackTrace;

  @override
  String toString() {
    return 'Error.fileError(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        ioError,
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        fileError,
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        directorySelectionError,
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        gitError,
  }) {
    return fileError(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(core.Object error, Option<StackTrace> stackTrace)? ioError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        fileError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        directorySelectionError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        gitError,
  }) {
    return fileError?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(core.Object error, Option<StackTrace> stackTrace)? ioError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        fileError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        directorySelectionError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        gitError,
    required TResult orElse(),
  }) {
    if (fileError != null) {
      return fileError(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) ioError,
    required TResult Function(_Error value) fileError,
    required TResult Function(_Error value) directorySelectionError,
    required TResult Function(_Error value) gitError,
  }) {
    return fileError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Error value)? ioError,
    TResult Function(_Error value)? fileError,
    TResult Function(_Error value)? directorySelectionError,
    TResult Function(_Error value)? gitError,
  }) {
    return fileError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? ioError,
    TResult Function(_Error value)? fileError,
    TResult Function(_Error value)? directorySelectionError,
    TResult Function(_Error value)? gitError,
    required TResult orElse(),
  }) {
    if (fileError != null) {
      return fileError(this);
    }
    return orElse();
  }
}

abstract class _Error implements Error {
  const factory _Error(
      final core.Object error, final Option<StackTrace> stackTrace) = _$_Error;

  @override
  core.Object get error;
  @override
  Option<StackTrace> get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> implements $ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  $Res call({core.Object error, Option<StackTrace> stackTrace});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$ErrorCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as core.Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as Option<StackTrace>,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error, this.stackTrace);

  @override
  final core.Object error;
  @override
  final Option<StackTrace> stackTrace;

  @override
  String toString() {
    return 'Error.directorySelectionError(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        ioError,
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        fileError,
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        directorySelectionError,
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        gitError,
  }) {
    return directorySelectionError(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(core.Object error, Option<StackTrace> stackTrace)? ioError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        fileError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        directorySelectionError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        gitError,
  }) {
    return directorySelectionError?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(core.Object error, Option<StackTrace> stackTrace)? ioError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        fileError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        directorySelectionError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        gitError,
    required TResult orElse(),
  }) {
    if (directorySelectionError != null) {
      return directorySelectionError(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) ioError,
    required TResult Function(_Error value) fileError,
    required TResult Function(_Error value) directorySelectionError,
    required TResult Function(_Error value) gitError,
  }) {
    return directorySelectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Error value)? ioError,
    TResult Function(_Error value)? fileError,
    TResult Function(_Error value)? directorySelectionError,
    TResult Function(_Error value)? gitError,
  }) {
    return directorySelectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? ioError,
    TResult Function(_Error value)? fileError,
    TResult Function(_Error value)? directorySelectionError,
    TResult Function(_Error value)? gitError,
    required TResult orElse(),
  }) {
    if (directorySelectionError != null) {
      return directorySelectionError(this);
    }
    return orElse();
  }
}

abstract class _Error implements Error {
  const factory _Error(
      final core.Object error, final Option<StackTrace> stackTrace) = _$_Error;

  @override
  core.Object get error;
  @override
  Option<StackTrace> get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> implements $ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  $Res call({core.Object error, Option<StackTrace> stackTrace});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$ErrorCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as core.Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as Option<StackTrace>,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error, this.stackTrace);

  @override
  final core.Object error;
  @override
  final Option<StackTrace> stackTrace;

  @override
  String toString() {
    return 'Error.gitError(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        ioError,
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        fileError,
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        directorySelectionError,
    required TResult Function(core.Object error, Option<StackTrace> stackTrace)
        gitError,
  }) {
    return gitError(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(core.Object error, Option<StackTrace> stackTrace)? ioError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        fileError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        directorySelectionError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        gitError,
  }) {
    return gitError?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(core.Object error, Option<StackTrace> stackTrace)? ioError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        fileError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        directorySelectionError,
    TResult Function(core.Object error, Option<StackTrace> stackTrace)?
        gitError,
    required TResult orElse(),
  }) {
    if (gitError != null) {
      return gitError(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) ioError,
    required TResult Function(_Error value) fileError,
    required TResult Function(_Error value) directorySelectionError,
    required TResult Function(_Error value) gitError,
  }) {
    return gitError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Error value)? ioError,
    TResult Function(_Error value)? fileError,
    TResult Function(_Error value)? directorySelectionError,
    TResult Function(_Error value)? gitError,
  }) {
    return gitError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? ioError,
    TResult Function(_Error value)? fileError,
    TResult Function(_Error value)? directorySelectionError,
    TResult Function(_Error value)? gitError,
    required TResult orElse(),
  }) {
    if (gitError != null) {
      return gitError(this);
    }
    return orElse();
  }
}

abstract class _Error implements Error {
  const factory _Error(
      final core.Object error, final Option<StackTrace> stackTrace) = _$_Error;

  @override
  core.Object get error;
  @override
  Option<StackTrace> get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

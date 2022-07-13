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
  Repo get entity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoStateCopyWith<RepoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoStateCopyWith<$Res> {
  factory $RepoStateCopyWith(RepoState value, $Res Function(RepoState) then) =
      _$RepoStateCopyWithImpl<$Res>;
  $Res call({Repo entity});

  $RepoCopyWith<$Res> get entity;
}

/// @nodoc
class _$RepoStateCopyWithImpl<$Res> implements $RepoStateCopyWith<$Res> {
  _$RepoStateCopyWithImpl(this._value, this._then);

  final RepoState _value;
  // ignore: unused_field
  final $Res Function(RepoState) _then;

  @override
  $Res call({
    Object? entity = freezed,
  }) {
    return _then(_value.copyWith(
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as Repo,
    ));
  }

  @override
  $RepoCopyWith<$Res> get entity {
    return $RepoCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc
abstract class _$$_RepoStateCopyWith<$Res> implements $RepoStateCopyWith<$Res> {
  factory _$$_RepoStateCopyWith(
          _$_RepoState value, $Res Function(_$_RepoState) then) =
      __$$_RepoStateCopyWithImpl<$Res>;
  @override
  $Res call({Repo entity});

  @override
  $RepoCopyWith<$Res> get entity;
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
    Object? entity = freezed,
  }) {
    return _then(_$_RepoState(
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as Repo,
    ));
  }
}

/// @nodoc

class _$_RepoState implements _RepoState {
  const _$_RepoState({required this.entity});

  @override
  final Repo entity;

  @override
  String toString() {
    return 'RepoState(entity: $entity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepoState &&
            const DeepCollectionEquality().equals(other.entity, entity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(entity));

  @JsonKey(ignore: true)
  @override
  _$$_RepoStateCopyWith<_$_RepoState> get copyWith =>
      __$$_RepoStateCopyWithImpl<_$_RepoState>(this, _$identity);
}

abstract class _RepoState implements RepoState {
  const factory _RepoState({required final Repo entity}) = _$_RepoState;

  @override
  Repo get entity;
  @override
  @JsonKey(ignore: true)
  _$$_RepoStateCopyWith<_$_RepoState> get copyWith =>
      throw _privateConstructorUsedError;
}

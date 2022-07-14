import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:git_mobile/utility/types/fp_alias.dart';
import 'dart:core' hide Error;
import 'dart:core' as core;

part 'error.freezed.dart';

@freezed
class Error with _$Error implements core.Error {
  const Error._();
  const factory Error.ioError(
    Object error, [
    @Default(null) StackTrace? stackTrace,
  ]) = _IoError;
  const factory Error.fileError(
    Object error, [
    @Default(null) StackTrace? stackTrace,
  ]) = _FileError;
  const factory Error.directorySelectionError(
    Object error, [
    @Default(null) StackTrace? stackTrace,
  ]) = _DirectorySelectionError;
  const factory Error.gitError(
    Object error, [
    @Default(null) StackTrace? stackTrace,
  ]) = _GitError;
}

// Nullableを解決したい

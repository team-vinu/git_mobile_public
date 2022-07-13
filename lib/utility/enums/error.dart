import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:git_mobile/utility/types/fp_alias.dart';
import 'dart:core' hide Error;
import 'dart:core' as core;

part 'error.freezed.dart';

@freezed
class Error extends core.Error {
  const factory Error.ioError(
    Object error,
    FpOption<StackTrace> stackTrace,
  ) = _Error;
  const factory Error.fileError(
    Object error,
    FpOption<StackTrace> stackTrace,
  ) = _Error;
  const factory Error.directorySelectionError(
    Object error,
    FpOption<StackTrace> stackTrace,
  ) = _Error;
  const factory Error.gitError(
    Object error,
    FpOption<StackTrace> stackTrace,
  ) = _Error;
}

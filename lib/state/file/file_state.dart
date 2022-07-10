import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fpdart/fpdart.dart' as fp;

part 'file_state.freezed.dart';

@freezed
class FileState with _$FileState {
  const factory FileState({
    required fp.Option<String> dirOpenMsg,
  }) = _FileState;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fpdart/fpdart.dart' as fp;

part 'repo.freezed.dart';

@freezed
class Repo with _$Repo {
  const factory Repo({
    required fp.Option<String> path,
    required fp.Option<String> cloneUrl,
    // @Default("This repository is not initialized.") String initMsg,
    // @Default("No repository opened.") String openMsg,
    // @Default("This repository is not cloned.") String cloneMsg,
  }) = _Repo;
}

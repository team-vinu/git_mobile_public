import 'dart:io';

import 'package:fpdart/fpdart.dart' as fp;

import 'package:git_mobile/ffi.dart';
import 'package:git_mobile/utility/enums/error.dart';
import 'package:git_mobile/utility/types/fp_alias.dart';

Future<FpResult<FpUnit>> gitInit(String path) async {
  final result = await git.gitInit(dir: path);
  return result.match((err) {
    return FpResult<FpUnit>.left(Error.gitError(err, fp.none()));
  }, (_) {
    return FpResult<FpUnit>.of(fp.unit);
  });
}

Future<FpResult<FpUnit>> gitOpen(String path) async {
  final result = await git.gitOpen(dir: path);
  return result.match(
    (err) => FpResult<FpUnit>.left(Error.gitError(err, fp.none())),
    (_) => FpResult<FpUnit>.of(fp.unit),
  );
}

Future<FpResult<FpUnit>> gitClone(String path, String url) async {
  final result = await (Platform.isAndroid
      ? git.gitHttpClone(dir: path, url: url)
      : git.gitHttpsClone(dir: path, url: url));
  return result.match((err) {
    return FpResult<FpUnit>.left(Error.gitError(err, fp.none()));
  }, (_) {
    return FpResult<FpUnit>.of(fp.unit);
  });
}

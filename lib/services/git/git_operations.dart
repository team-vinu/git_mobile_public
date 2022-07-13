import 'dart:io';

import 'package:fpdart/fpdart.dart' as fp;

import 'package:git_mobile/ffi.dart';
import 'package:git_mobile/utility/enums/error.dart';
import 'package:git_mobile/utility/types/fp_alias.dart';

fp.Task<FpResult<fp.Unit>> gitInit(String path) => fp.Task(() async {
      final result = await git.gitInit(dir: path);
      return result.match((err) {
        return FpResult<fp.Unit>.left(Error.gitError(err));
      }, (_) {
        return FpResult<fp.Unit>.of(fp.unit);
      });
    });

fp.Task<FpResult<fp.Unit>> gitOpen(String path) => fp.Task(() async {
      final result = await git.gitOpen(dir: path);
      return result.match(
        (err) => FpResult<fp.Unit>.left(Error.gitError(err)),
        (_) => FpResult<fp.Unit>.of(fp.unit),
      );
    });

fp.Task<FpResult<fp.Unit>> gitClone(String path, String url) => fp.Task(
      () async {
        final result = await (Platform.isAndroid
            ? git.gitHttpClone(dir: path, url: url)
            : git.gitHttpsClone(dir: path, url: url));
        return result.match(
          (err) => FpResult<fp.Unit>.left(Error.gitError(err)),
          (ok) => FpResult<fp.Unit>.of(fp.unit),
        );
      },
    );

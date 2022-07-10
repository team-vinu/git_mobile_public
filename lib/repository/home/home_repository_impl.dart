/*
import 'dart:math';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fpdart/fpdart.dart' as fp;

import 'home_repository.dart';
import 'package:git_mobile/model/enums/error.dart';

final homeRepositoryProvider =
    Provider<HomeRepository>((ref) => HomeRepositoryImpl(ref.read));

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._reader);
  final Reader _reader;

  @override
  Future<fp.Either<int, Error>> fetch() async {
    return Result.guardFuture(() async {
      await Future.delayed(const Duration(seconds: 2)); // 2秒待機

      final rand = Random();
      return fp.Either.left(nextInt(100)); // 0~100の乱数
    });
  }
}
*/
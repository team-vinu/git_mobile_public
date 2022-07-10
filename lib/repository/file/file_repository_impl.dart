import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fpdart/fpdart.dart' as fp;
import 'package:file_picker/file_picker.dart';

import 'file_repository.dart';
import 'package:git_mobile/model/enums/error.dart';

final fileRepositoryProvider =
    Provider<FileRepository>((ref) => FileRepositoryImpl(ref.read));

class FileRepositoryImpl implements FileRepository {
  FileRepositoryImpl(this._reader);
  final Reader _reader;

  @override
  Future<fp.Either<String, Error>> openDir() async {
    String? ret = await FilePicker.platform.getDirectoryPath();
    if (ret == null) {
      return fp.Either<String, Error>.of(Error.directorySelectionError);
    }
    return fp.Either<String, Error>.left(ret);
  }
}

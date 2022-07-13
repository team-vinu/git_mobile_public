import 'package:file_picker/file_picker.dart';
// import 'package:permission_handler/permission_handler.dart';
import 'package:fpdart/fpdart.dart' as fp;

import 'package:git_mobile/utility/enums/error.dart';
import 'package:git_mobile/utility/types/fp_alias.dart';

Future<FpResult<String>> pickDir() async {
  // final status = await Permission.manageExternalStorage.request();
  // String? ret = await FilePicker.platform.getDirectoryPath();
  String? ret = await FilePicker.platform.getDirectoryPath();
  // if (status.isGranted) {}
  if (ret == null) {
    return FpResult<String>.left(
        Error.directorySelectionError("Aborted file selection.", fp.none()));
  }
  return FpResult<String>.of(ret);
}

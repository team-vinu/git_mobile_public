import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:file_picker/file_picker.dart';

final dirProvider = FutureProvider<String?>((ref) async {});

class DirController extends StateNotifier<String?> {
  DirController(this.ref) : super("");
  final Ref ref;

  Future<String?> getDir() async {
    state = await FilePicker.platform.getDirectoryPath();
    return state;
  }
}

import 'dart:io';

import 'package:path_provider/path_provider.dart';

class Storage {
  Future<String> get localPath async {
    final dir = await getApplicationDocumentsDirectory();
    return dir.path;
  }

  Future<File> get localFile async {
    final path = await localPath;
    return File('$path');
  }

  Future readData() async {
    try {
      final file = await localFile;
      final String body = await file.readAsString();
      print(body);
    } catch (e) {
      return e.toString();
    }
  }
}

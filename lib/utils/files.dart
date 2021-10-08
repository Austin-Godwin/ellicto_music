import 'dart:async';
import 'dart:io';
import 'package:file_manager/file_manager.dart';
import 'package:permission_handler/permission_handler.dart';

class Files {
  static Future getFile() async {
    List<FileSystemEntity> allFiles = [];
    List file2 = [];
    Set fileDir = Set();

    final status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }
    Directory dir = Directory("/storage/emulated/0/");
    // final androidData ="/storage/emulated/0/Android/media";
    List<FileSystemEntity> files = dir.listSync();

    for (FileSystemEntity file in files) {
      FileManager.getStorageList();
      String dat = file.path;

      if (!dat.endsWith("Android")) {
        allFiles.add(file);
      }

      // print(dat);
    }
    // print(allFiles);

    for (FileSystemEntity file in allFiles) {
      if (file
          .statSync()
          .type == FileSystemEntityType.directory) {
        String dat = file.path;

        Directory dir2 = Directory(dat);
        List<FileSystemEntity> files2 = dir2.listSync(recursive: true);

        for (FileSystemEntity newFile in files2) {
          String dat = newFile.path;
          if (dat.endsWith('.mp3')) {
            file2.add(dat);
            fileDir.add(newFile.parent);
          }
        }
      }
    }
    // print(file2);
    print(fileDir.length);
  }
}
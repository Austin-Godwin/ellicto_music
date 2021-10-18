import 'dart:async';
import 'dart:io';
import 'package:permission_handler/permission_handler.dart';

class Files {
  static Future getFile() async {
    List<FileSystemEntity> allFiles = [];
    List contents = [];
    List contentsDir = [];
    Map<String, List> data = Map<String, List>();

    final status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }

    Directory dir = Directory("/storage/emulated/0/");
    List<FileSystemEntity> files = dir.listSync();

    Directory androidData =Directory("/storage/emulated/0/Android/media/com.whatsapp");
    List<FileSystemEntity> androidMediaFiles = androidData.listSync(recursive: true);

    files.addAll(androidMediaFiles);

    for (FileSystemEntity file in files) {
      // FileManager.getStorageList();
      String dat = file.path;

      if (!dat.endsWith("Android")) {
        allFiles.add(file);
      }
    }

    for (FileSystemEntity file in allFiles) {
      if(file.statSync().type == FileSystemEntityType.file && (file.path.endsWith(".mp3") || file.path.endsWith('.aac') || file.path.endsWith('.ogg') || file.path.endsWith('.m4a') || file.path.endsWith('.flac')) ) {
        contents.add(file.path);
      }
      if (file.statSync().type == FileSystemEntityType.directory) {
        String dat = file.path;

        Directory dir2 = Directory(dat);
        List<FileSystemEntity> files2 = dir2.listSync(recursive: true);

        for (FileSystemEntity newFile in files2) {
          String dat = newFile.path;
          if (dat.endsWith('.mp3') || dat.endsWith('.aac') || dat.endsWith('.ogg') || dat.endsWith('.m4a') || dat.endsWith('.flac')) {
            contents.add(dat);

            if(!contentsDir.contains(newFile.parent.path)) {
              contentsDir.add(newFile.parent.path);
            }
          }
        }
      }
    }

    print(contents.length);
    print(contentsDir.length);

    data.addAll({"fileData": contents, "fileFolders": contentsDir});

    print(data);
    return data;
  }
}
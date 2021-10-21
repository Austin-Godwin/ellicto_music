import 'dart:async';
import 'dart:io';
import 'package:permission_handler/permission_handler.dart';

const String ROOT = "/storage/emulated/0";
// const String ROOT = "/storage/emulated/0/";

const List<String> Extensions = ['mp3', 'aac', 'ogg', 'm4a', 'flac'];

class Files {
  Future<void> requestPermission() async {
    final status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }
  }

  Future<List<List<FileSystemEntity>>> getDocs([String? path]) async {
    await requestPermission();

    Directory dir = Directory(path ?? ROOT);

    List<List<FileSystemEntity>> files = getFiles(dir);

// this contains two
    return files;
  }

  String getName(FileSystemEntity doc) {
    return doc.path.split("/").last.trim();
  }

  bool isFile(FileSystemEntity doc) {
    final type = doc.statSync().type;

    return type == FileSystemEntityType.file;
  }

  bool isMusicFile(FileSystemEntity doc) {
    final type = doc.statSync().type;
    final extension = doc.path.trim().split(".").last.toLowerCase();
    return type == FileSystemEntityType.file && Extensions.contains(extension);
  }

  bool isDirectory(FileSystemEntity doc) {
    final type = doc.statSync().type;

    return type == FileSystemEntityType.directory;
  }

  List<List<FileSystemEntity>> getFiles(Directory dir) {
    final List<FileSystemEntity> musics = [];
    final List<FileSystemEntity> folders = [];
    final list = dir.listSync();
    list.forEach((doc) {
      if (isMusicFile(doc)) {
        print("Found file ${doc.path}");
        musics.add(doc);
      } else if (isDirectory(doc)) {
        print("Found Directory ${doc.path}");
        folders.add(doc);
      }
    });
    return [folders, musics];
  }
}

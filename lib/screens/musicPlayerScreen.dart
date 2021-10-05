import 'dart:io';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:ellicto_music_player/utils/files.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ellicto_music_player/widgets/reusableCard.dart';
import 'package:ellicto_music_player/widgets/reusableClipRect.dart';
import 'package:ellicto_music_player/widgets/reusableIconButtonWidget.dart';
import 'package:ellicto_music_player/widgets/reusablePopupWidget.dart';
import 'package:ellicto_music_player/widgets/reusableTextWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MusicPlayerScreen extends StatefulWidget {
  static final String route = 'musicPlayerScreen';
  MusicPlayerScreen({Key? key}) : super(key: key);

  @override
  _MusicPlayerScreenState createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  final bool hasLoaded = false;
  final ellictoMusic = AssetsAudioPlayer();

  void openAudio() async{
    final audioFile = Files.getFile();
    await ellictoMusic.open(Audio.file(audioFile.toString()));
  }

  // getMusic() async{
  //   Directory dir = Directory("/storage/emulator/0");
  //   List<FileSystemEntity> files = dir.listSync();
  //
  //   for (FileSystemEntity file in files) {
  //     Uri dat = file.uri;
  //
  //     print(dat);
  //   }
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   var mpFiles = Files.getFile();
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Text('ELLICTO Music'),
          actions: [
            MyIconButton(
              icon: Icon(Icons.search_rounded),
              onTap: () {},
            ),
            MyPopup()
          ],
          bottom: TabBar(
            // labelStyle: TextStyle(color: Colors.indigo),
            // unselectedLabelStyle: TextStyle(color: Colors.indigo),
            tabs: [
              MyTextWidget(
                  marginLeft: MediaQuery.of(context).size.width / 2.5,
                  text: 'Spotify'),
              MyTextWidget(text: 'Favourites'),
              MyTextWidget(text: 'Playlists'),
              MyTextWidget(text: 'Tracks'),
              MyTextWidget(text: 'Albums'),
              MyTextWidget(text: 'Artists'),
              MyTextWidget(
                  marginRight: MediaQuery.of(context).size.width / 2.5,
                  text: 'Folders'),
            ],
            isScrollable: true,
            indicatorColor: Colors.transparent,
          ),
        ),
        body: Stack(
          alignment: AlignmentDirectional.bottomStart,
          fit: StackFit.loose,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Container(
                color: Colors.grey[900],
                child: TabBarView(
                  // physics: PageScrollPhysics(),
                  children: [
                    Center(
                      child: MyClipRect(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Center(
                      child: MyClipRect(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Center(
                      child: MyClipRect(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Center(
                      child: MyClipRect(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Center(
                      child: MyClipRect(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Center(
                      child: MyClipRect(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Center(
                      child: MyClipRect(
                        child: hasLoaded ? CircularProgressIndicator(
                          color: Colors.white,
                        ) : Container(width: 100.0, height: 100.0, color: Colors.red,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            MyCard()
          ],
        ),
      ),
    );
  }
}

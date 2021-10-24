import 'dart:io';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:ellicto_music_player/data/TracksList.dart';
import 'package:ellicto_music_player/screens/audioScreen.dart';
import 'package:ellicto_music_player/utils/files.dart';
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
                color: Colors.white10,
                child: TabBarView(
                  // physics: PageScrollPhysics(),
                  children: [
                    Center(
                      child: MyClipRect(
                        child: ListOfFiles(),
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
                    MyClipRect(
                      child: hasLoaded
                          ? Center(
                              child: CircularProgressIndicator(
                                color: Colors.red,
                              ),
                            )
                          : Tracks(),
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
                        child: hasLoaded
                            ? CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : Container(
                                width: 100.0,
                                height: 100.0,
                                color: Colors.red,
                              ),
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

class ListOfFiles extends StatefulWidget {
  ListOfFiles({Key? key}) : super(key: key);

  @override
  State<ListOfFiles> createState() => _ListOfFilesState();
}

class _ListOfFilesState extends State<ListOfFiles> {
  final explorer = Files();

  List<FileSystemEntity> musics = [];

  bool isLoading = true;
  bool canGoBack = false;

  void onMusicClick(FileSystemEntity music) {
    Navigator.of(context).pushNamed(AudioScreen.route, arguments: music.uri);
  }

  void scanForMusic() async {
    setState(() {
      isLoading = true;
    });

    final result = await explorer.getDocs();

    setState(() {
      musics = result;
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    scanForMusic();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: musics.length,
        itemBuilder: (BuildContext context, int index) {
          final doc = musics[index];

          return ListTile(
            onTap: () => onMusicClick(doc),
            tileColor: Colors.white,
            title: Text(explorer.getName(doc)),
            leading: Container(
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.music_note,
                    color: Colors.white,
                  ),
                )),
          );
        },
      ),
    );
  }
}

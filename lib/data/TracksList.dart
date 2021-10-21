import 'package:ellicto_music_player/utils/files.dart';
import 'package:ellicto_music_player/widgets/reusableTracksListTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tracks extends StatefulWidget {
  const Tracks({Key? key}) : super(key: key);

  @override
  State<Tracks> createState() => _TracksState();
}

class _TracksState extends State<Tracks> {
  void openAudio() async{

    final allAudio = Files().getDocs();
    print(allAudio);
    // final allAudio = Files.getFile().asStream();
    //
    // final audio = allAudio.listen((data) { return print('Data: $data');});
    // print(audio);
  }

  Stream<int> generateNumbers = (() async* {
    await Future<void>.delayed(Duration(seconds: 2));

    for (int i = 1; i <= 10; i++) {
      await Future<void>.delayed(Duration(seconds: 1));
      yield i;
    }
  })();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        ListTile(
          minVerticalPadding: 0.0,
          leading: Icon(CupertinoIcons.sort_down, color: Colors.white54, size: 35.0,),
          title: Text('name'),
          onTap: () {
            setState(() {
              openAudio();
            });
          },
        ),
        StreamBuilder<Object>(
          stream: null,
          builder: (context, snapshot) {
            return AudioTrack(songTrack: "",);
          }
        ),
      ],),
    );
  }
}

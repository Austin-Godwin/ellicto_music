import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:ellicto_music_player/widgets/reusableIconButtonWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class AudioScreen extends StatefulWidget {
  static final String route = 'audioScreen';
  const AudioScreen({Key? key}) : super(key: key);

  @override
  _AudioScreenState createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  double _slider = 1.0;

  Uri? audioFile;
  final player = AssetsAudioPlayer();

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      audioFile ??= ModalRoute.of(context)!.settings.arguments as Uri;
      start();
    });
  }

  void start() {
    if (audioFile != null) {
      player.open(
        Audio.file(audioFile!.path,
            metas: Metas(title: audioFile!.path.split('/').last)),
      );
      player.play();
    }
  }

  @override
  void dispose() {
    player.stop();
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: MyIconButton(
            icon: Icon(CupertinoIcons.chevron_down),
            onTap: () {
              Navigator.of(context).pop();
            }),
        actions: [
          MyIconButton(
            icon: Icon(Icons.volume_up_outlined),
            onTap: () {},
          ),
          MyIconButton(
            icon: Icon(Icons.equalizer_rounded),
            onTap: () {},
          ),
          MyIconButton(
            icon: Icon(Icons.more_vert_rounded),
            onTap: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          top: 30.0,
          bottom: 30.0,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Music Title',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Artist',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300),
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyIconButton(
                          icon: Icon(
                            CupertinoIcons.music_note_list,
                            size: 25.0,
                          ),
                          onTap: () {},
                        ),
                        MyIconButton(
                          icon: Icon(
                            CupertinoIcons.heart,
                            size: 25.0,
                          ),
                          onTap: () {},
                        ),
                        MyIconButton(
                          icon: Icon(
                            CupertinoIcons.plus,
                            size: 25.0,
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: Column(
                      children: [
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            trackHeight: 2.0,
                            thumbShape: RoundSliderThumbShape(
                              disabledThumbRadius: 7.0,
                              enabledThumbRadius: 7.0,
                            ),
                          ),
                          child: Slider(
                              thumbColor: Colors.white,
                              activeColor: Colors.white,
                              inactiveColor: Colors.grey[600],
                              value: _slider,
                              min: 0.0,
                              max: 5.0,
                              onChanged: (double value) {
                                setState(() {
                                  _slider = value;
                                });
                              }),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 25.0, right: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '0.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10.0,
                                    color: Colors.white),
                              ),
                              Text(
                                '5.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10.0,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyIconButton(
                          icon: Icon(CupertinoIcons.shuffle),
                          onTap: () {},
                        ),
                        MyIconButton(
                          icon: Icon(CupertinoIcons.backward_end_alt_fill),
                          onTap: () {},
                        ),
                        MyIconButton(
                          icon: Icon(CupertinoIcons.play_fill),
                          onTap: () {},
                        ),
                        MyIconButton(
                          icon: Icon(CupertinoIcons.forward_end_alt_fill),
                          onTap: () {},
                        ),
                        MyIconButton(
                          icon: Icon(CupertinoIcons.repeat),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}

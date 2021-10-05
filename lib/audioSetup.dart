// import 'package:ellicto_music_player/widgets/iconText.dart';
// import 'package:flutter/material.dart';

// class AudioSetup extends StatefulWidget {
//   const AudioSetup({Key? key}) : super(key: key);
//
//   @override
//   _AudioSetupState createState() => _AudioSetupState();
// }
//
// class _AudioSetupState extends State<AudioSetup> {
  // final audioManagerInstance = AudioManager.instance;
  // late final _slider;
  // bool isPlaying = false;
  // bool showVol = false;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   audioSetup();
  // }
  //
  // void audioSetup() {
  //   audioManagerInstance.onEvents((events, args) {
  //     switch (events) {
  //       case AudioManagerEvents.start:
  //         _slider = 0;
  //         break;
  //       case AudioManagerEvents.seekComplete:
  //         _slider = audioManagerInstance.position.inMilliseconds /
  //             audioManagerInstance.duration.inMilliseconds;
  //         setState(() {});
  //         break;
  //       case AudioManagerEvents.playstatus:
  //         isPlaying = audioManagerInstance.isPlaying;
  //         setState(() {});
  //         break;
  //       case AudioManagerEvents.timeupdate:
  //         _slider = audioManagerInstance.position.inMilliseconds /
  //             audioManagerInstance.duration.inMilliseconds;
  //         audioManagerInstance.updateLrc(args["position"].toString());
  //         setState(() {});
  //         break;
  //       case AudioManagerEvents.ended:
  //         audioManagerInstance.next();
  //         setState(() {});
  //         break;
  //       default:
  //         break;
  //     }
  //   });
  // }
  //
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       actions: <Widget>[
  //         Padding(
  //           padding: EdgeInsets.all(8.0),
  //           child: InkWell(
  //             onTap: () {
  //               setState(() {
  //                 showVol = !showVol;
  //               });
  //             },
  //             child: IconText(
  //               iconData: Icons.volume_down,
  //               text: 'volume',
  //               iconColor: Colors.white,
  //               textColor: Colors.white,
  //               iconSize: 20.0,
  //             ),
  //           ),
  //         )
  //       ],
  //       elevation: 0.0,
  //       backgroundColor: Colors.black,
  //       title: showVol
  //           ? Slider(
  //               value: audioManagerInstance.volume ?? 0,
  //               onChanged: (value) {
  //                 setState(() {
  //                   audioManagerInstance.setVolume(value, showVolume: true);
  //                 });
  //               },
  //             )
  //           : Text('Ellicto Music Player'),
  //     ),
  //   );
  // }
// }

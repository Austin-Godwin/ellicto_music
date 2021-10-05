import 'package:ellicto_music_player/screens/audioScreen.dart';
import 'package:ellicto_music_player/screens/musicPlayerScreen.dart';
import 'package:ellicto_music_player/screens/settingsScreen.dart';
import 'package:flutter/material.dart';
import 'package:ellicto_music_player/color/colors.dart';

import 'color/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: primaryBlack,
      ),
      home: MusicPlayerScreen(),
      routes: {
        AudioScreen.route:(BuildContext context) => AudioScreen(),
        SettingsScreen.route:(BuildContext context) => SettingsScreen()
      },
    );
  }
}
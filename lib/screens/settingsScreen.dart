import 'package:ellicto_music_player/data/flexibleSpaceBar.dart';
import 'package:ellicto_music_player/data/generalSettings.dart';
import 'package:ellicto_music_player/data/information.dart';
import 'package:ellicto_music_player/data/playbackSettings.dart';
import 'package:ellicto_music_player/data/playlistSettings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  static final String route = 'screen settings';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              snap: true,
              floating: true,
              elevation: 0.0,
              expandedHeight: MediaQuery.of(context).size.height / 2.5,
              flexibleSpace: MyFlexibleSpaceBar()
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  PlayBack(),
                  SizedBox(height: 10.0),
                  PlayLists(),
                  SizedBox(height: 10.0),
                  General(),
                  SizedBox(height: 10.0),
                  Information()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:ellicto_music_player/widgets/reusableIconButtonWidget.dart';
import 'package:ellicto_music_player/widgets/reusableSliderListTIle.dart';
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
    double _slider = 1.0;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                snap: false,
                floating: true,
                elevation: 0.0,
                expandedHeight: MediaQuery.of(context).size.height / 2.5,
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.only(),
                  title: MyIconButton(
                    icon: Icon(
                      CupertinoIcons.chevron_left,
                      size: 18.0,
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  background: Center(
                    child: Text(
                      'Ellicto Music\nsettings',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 40.5),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Playback',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Card(
                    margin: EdgeInsets.all(0.0),
                    // elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      // side: BorderSide(
                      //     color: Colors.green,
                      //     width: 2.0,
                      //     style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20.0)),
                    color: Colors.grey[900],
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Column(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.all(0.0),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sleep timer',
                                  style: TextStyle(
                                      fontSize: 18.5, color: Colors.white),
                                ),
                                Text(
                                  'Off',
                                  style: TextStyle(color: Colors.blue[700]),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            indent: 0.5,
                            color: Colors.grey[800],
                            thickness: 1.5,
                          ),
                          MySliderListTile(text: 'Play speed'),
                          MySliderListTile(text: 'Crossfade between tracks'),
                          Divider(
                            indent: 2.0,
                            color: Colors.grey[800],
                            thickness: 1.5,
                          ),

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



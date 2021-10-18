import 'package:ellicto_music_player/data/sleepTimerOptions.dart';
import 'package:ellicto_music_player/widgets/reusableIconButtonWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SleepTimerScreen extends StatelessWidget {
  static final String route = 'sleepTimeScreen';
  const SleepTimerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: MyIconButton(icon: Icon(CupertinoIcons.chevron_left, size: 28.0,), onTap: (){Navigator.of(context).pop();}),
        title: Text('Sleep timer', style: TextStyle(fontSize: 22.0, color: Colors.white, fontWeight: FontWeight.w400),),
        titleSpacing: 0.0,
      ),
      body: SleepTimer(),
    );
  }
}

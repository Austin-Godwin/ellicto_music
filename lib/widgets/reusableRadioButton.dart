import 'package:ellicto_music_player/data/sleepTimerOptions.dart';
import 'package:flutter/material.dart';

class MyRadioListTile extends StatefulWidget {
  final String titleText;
  final SleepTimerOption option;
  MyRadioListTile(
      {Key? key, required this.titleText, required this.option})
      : super(key: key);

  @override
  State<MyRadioListTile> createState() => _MyRadioListTileState();
}

class _MyRadioListTileState extends State<MyRadioListTile> {
  SleepTimerOption _timerOption = SleepTimerOption.off;
  @override
  Widget build(BuildContext context) {
    return RadioListTile<SleepTimerOption>(
        title: Text(widget.titleText),
        value: widget.option,
        groupValue: _timerOption,
        onChanged: (SleepTimerOption? value) {
          setState(() {
             _timerOption = value!;
          });
        });
  }
}

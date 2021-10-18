import 'package:ellicto_music_player/data/divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SleepTimerOption {
  off,
  thirtyMinutes,
  oneHour,
  oneHourThirtyMinutes,
  twoHours,
  custom
}

class SleepTimer extends StatefulWidget {
  const SleepTimer({Key? key}) : super(key: key);

  @override
  State<SleepTimer> createState() => _SleepTimerState();
}

class _SleepTimerState extends State<SleepTimer> {
  SleepTimerOption _timerOption = SleepTimerOption.off;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          unselectedWidgetColor: Colors.grey,
          disabledColor: Colors.blue,
      ),
      child: Card(
        margin: EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)),
        // color: Colors.grey[900],
        color: Colors.white10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RadioListTile<SleepTimerOption>(
              dense: true,
                activeColor: Colors.blue[700],
                title: Text('Off', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w400),),
                value: SleepTimerOption.off,
                groupValue: _timerOption,
                onChanged: (SleepTimerOption? value) {
                  setState(() {
                    _timerOption = value!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 20.0),
              child: Divider(height: 0.0,
                indent: 0.0,
                color: Colors.grey[800],
                thickness: 1.0,),
            ),
            RadioListTile<SleepTimerOption>(
                dense: true,
                activeColor: Colors.blue[700],
                title: Text('30 minutes', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w400),),
                value: SleepTimerOption.thirtyMinutes,
                groupValue: _timerOption,
                onChanged: (SleepTimerOption? value) {
                  setState(() {
                    _timerOption = value!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 20.0),
              child: Divider(height: 0.0,
                indent: 0.0,
                color: Colors.grey[800],
                thickness: 1.0,),
            ),
            RadioListTile<SleepTimerOption>(
                dense: true,
                activeColor: Colors.blue[700],
                title: Text('1 hour', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w400),),
                value: SleepTimerOption.oneHour,
                groupValue: _timerOption,
                onChanged: (SleepTimerOption? value) {
                  setState(() {
                    _timerOption = value!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 20.0),
              child: Divider(height: 0.0,
                indent: 0.0,
                color: Colors.grey[800],
                thickness: 1.0,),
            ),
            RadioListTile<SleepTimerOption>(
                dense: true,
                activeColor: Colors.blue[700],
                title: Text('1 hour 30 minutes', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w400),),
                value: SleepTimerOption.oneHourThirtyMinutes,
                groupValue: _timerOption,
                onChanged: (SleepTimerOption? value) {
                  setState(() {
                    _timerOption = value!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 20.0),
              child: Divider(height: 0.0,
                indent: 0.0,
                color: Colors.grey[800],
                thickness: 1.0,),
            ),
            RadioListTile<SleepTimerOption>(
                dense: true,
                activeColor: Colors.blue[700],
                title: Text('2 hours', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w400),),
                value: SleepTimerOption.twoHours,
                groupValue: _timerOption,
                onChanged: (SleepTimerOption? value) {
                  setState(() {
                    _timerOption = value!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 20.0),
              child: Divider(height: 0.0,
                indent: 0.0,
                color: Colors.grey[800],
                thickness: 1.0,),
            ),
            RadioListTile<SleepTimerOption>(
                dense: true,
                activeColor: Colors.blue[700],
                title: Text('Custom', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w400),),
                value: SleepTimerOption.custom,
                groupValue: _timerOption,
                onChanged: (SleepTimerOption? value) {
                  setState(() {
                    _timerOption = value!;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
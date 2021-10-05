import 'package:ellicto_music_player/screens/audioScreen.dart';
import 'package:ellicto_music_player/widgets/reusableIconButtonWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0.0),
      // elevation: 0.0,
      shape: RoundedRectangleBorder(
          // side: BorderSide(
          //     color: Colors.green,
          //     width: 2.0,
          //     style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(50.0)),
      color: Colors.indigo,
      child: ListTile(
        onTap: () {
          // onTapCard(context);
          Navigator.of(context).pushNamed(AudioScreen.route);
        },
        horizontalTitleGap: 8.0,
        contentPadding:
            EdgeInsets.only(top: 5.0, right: 15.0, bottom: 5.0, left: 15.0),
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 20.0,
        ),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Music Title',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
            Text(
              'Artist',
              style: TextStyle(color: Colors.white, fontSize: 15.0),
            ),
          ],
        ),
        trailing: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            MyIconButton(
              icon: Icon(
                CupertinoIcons.backward_end_alt_fill,
              ),
              onTap: () {},
            ),
            MyIconButton(
              icon: Icon(
                CupertinoIcons.play_fill,
              ),
              onTap: () {},
            ),
            MyIconButton(
              icon: Icon(
                CupertinoIcons.forward_end_alt_fill,
              ),
              onTap: () {},
            ),
            MyIconButton(
              icon: Icon(
                CupertinoIcons.music_note_list,
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}

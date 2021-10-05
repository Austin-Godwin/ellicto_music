import 'package:ellicto_music_player/model/popupItem.dart';
import 'package:ellicto_music_player/data/popupItems.dart';
import 'package:ellicto_music_player/screens/settingsScreen.dart';
import 'package:flutter/material.dart';

class MyPopup extends StatefulWidget {
  const MyPopup({Key? key}) : super(key: key);

  @override
  _MyPopupState createState() => _MyPopupState();
}

class _MyPopupState extends State<MyPopup> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupItem>(
        onSelected: (item) => onSelected(context, item),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.5)),
        color: Colors.grey[900],
        itemBuilder: (context) =>
            [...PopupItems.itemList.map(buildItem).toList()]);
  }

  PopupMenuItem<PopupItem> buildItem(PopupItem item) =>
      PopupMenuItem<PopupItem>(
        height: 40.0,
        value: item,
        child: Text(
          item.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.0,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.0,
          ),
        ),
      );

  void onSelected(BuildContext context, PopupItem item) {
    setState(
      () {
        switch (item) {
          case PopupItems.itemSettings:
            Navigator.of(context).pushNamed(SettingsScreen.route);
        }
      },
    );
  }
}

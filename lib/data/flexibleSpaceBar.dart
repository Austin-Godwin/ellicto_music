import 'package:ellicto_music_player/widgets/reusableIconButtonWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFlexibleSpaceBar extends StatelessWidget {
  const MyFlexibleSpaceBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
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
    );
  }
}

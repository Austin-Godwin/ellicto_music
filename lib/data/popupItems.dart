import 'package:ellicto_music_player/model/popupItem.dart';

class PopupItems {
  static const List<PopupItem> itemList = [
    itemEdit,
    itemQualityAndEffect,
    itemSettings
  ];

  static const itemEdit = PopupItem(
    value: 1,
    name: 'Edit',
  );

  static const itemQualityAndEffect = PopupItem(
    value: 2,
    name: 'Sound quality and effects',
  );

  static const itemSettings = PopupItem(
    value: 3,
    name: 'Settings',
  );
}

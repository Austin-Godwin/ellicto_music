import 'package:ellicto_music_player/model/popupItem.dart';

class TrackPopupItems {
  static const List<PopupItem> itemList = [
    itemAdd,
    itemDelete,
    itemShare,
    itemDetails,
    itemAlbum,
    itemArtist,
    itemSet
  ];

  static const itemAdd = PopupItem(
    value: 1,
    name: 'Add',
  );

  static const itemDelete = PopupItem(
    value: 2,
    name: 'Delete',
  );

  static const itemShare = PopupItem(
    value: 3,
    name: 'Share',
  );

  static const itemDetails = PopupItem(
    value: 4,
    name: 'Track details',
  );

  static const itemAlbum = PopupItem(
    value: 5,
    name: 'Album',
  );

  static const itemArtist = PopupItem(
    value: 6,
    name: 'Artist',
  );

  static const itemSet = PopupItem(
    value: 7,
    name: 'Set as',
  );
}
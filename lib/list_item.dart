import 'package:flutter/material.dart';
import 'package:whatsapp_clone/hero_avatar.dart';

class ListItem extends StatelessWidget {
  final Widget title;
  final Widget subTitle;
  final Widget traillingWidget;
  final String heroTag;

  final GestureTapCallback onTap;

  ListItem(
      {Key key,
      this.heroTag,
      this.title,
      this.subTitle,
      this.traillingWidget,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: HeroAvatar(
        heroTag: heroTag,
      ),
      title: title,
      subtitle: subTitle,
      trailing: traillingWidget,
      onTap: onTap,
    );
  }
}

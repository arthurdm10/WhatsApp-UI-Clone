import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Widget title;
  final Widget subTitle;
  Widget traillingWidget = Container();

  ListItem({Key key, this.title, this.subTitle, this.traillingWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/avatar_placeholder.png"),
        maxRadius: 20.0,
      ),
      title: title,
      subtitle: subTitle,
      trailing: traillingWidget,
    );
  }
}

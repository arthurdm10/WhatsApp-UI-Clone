import 'package:flutter/material.dart';
import 'package:whatsapp_clone/list_item.dart';

class StatusListItem extends StatelessWidget {
  final String title;
  final String subTitle;

  StatusListItem({Key key, this.title, this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListItem(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 15,
        ),
      ),
      subTitle: Text(subTitle),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'badge.dart';

class ChatTrailling extends StatelessWidget {
  final String msgTime;
  final bool muted;
  final bool seen;

  const ChatTrailling({Key key, this.msgTime, this.muted, this.seen = false})
      : super(key: key);

  bool notNull(Object o) => o != null;

  TextStyle buildTextStyle() {
    Color textColor = Colors.grey[500];
    if (!seen) {
      textColor = Colors.green;
    }

    return TextStyle(fontSize: 12.0, color: textColor);
  }

  Container buildMsgRow() {
    List<Widget> children = [];

    if (muted) {
      children.add(Container(
        margin: EdgeInsets.only(right: 5),
        child: Icon(Icons.volume_off, size: 22),
      ));
    }

    if (!seen) {
      children.add(
        Badge(
          value: Random().nextInt(200).toString(),
          backgroundColor: Color(0xff00d163),
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 8),
          child: Text(
            msgTime,
            style: buildTextStyle(),
            textAlign: TextAlign.end,
          ),
        ),
        buildMsgRow(),
      ],
    );
  }
}

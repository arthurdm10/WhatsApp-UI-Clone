import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chat_trailling.dart';

import 'list_item.dart';

class ChatListItem extends StatelessWidget {
  ChatTrailling chatTrailling;
  final String chatName;
  final String heroTag;
  final Widget msg;

  ChatListItem(
      {Key key,
      this.chatName,
      this.msg,
      this.heroTag,
      msgTime,
      muted = false,
      seen = false})
      : super(key: key) {
    chatTrailling = ChatTrailling(
      msgTime: msgTime,
      muted: muted,
      seen: seen,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListItem(
      title: Text(chatName),
      subTitle: msg,
      traillingWidget: chatTrailling,
      heroTag: heroTag,
    );
  }
}

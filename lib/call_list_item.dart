import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chat_trailling.dart';

import 'list_item.dart';

class CallListItem extends StatelessWidget {
  ChatTrailling chatTrailling;

  final bool answered;
  final String contact;
  final String callTime;
  final String heroTag;

  CallListItem(this.contact, this.callTime, this.answered, this.heroTag);

  @override
  Widget build(BuildContext context) {
    return ListItem(
      heroTag: heroTag,
      title: Text(contact),
      subTitle: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              right: 3,
            ),
            child: Icon(
              Icons.call_received,
              size: 16,
              color: answered ? Colors.green : Colors.red,
            ),
          ),
          Text(callTime),
        ],
      ),
      traillingWidget: Icon(
        Icons.phone,
        color: Colors.teal,
      ),
    );
  }
}

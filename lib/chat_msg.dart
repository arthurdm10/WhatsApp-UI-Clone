import 'package:flutter/material.dart';

enum MsgStatus {
  sent,
  receveid,
  notSent,
  seen,
}

class ChatMsg extends StatelessWidget {
  final String msg;
  final String msgTime;
  final MsgStatus msgStatus;
  final bool received; //mensagem foi enviada pelo contato ?
  static const double iconSize = 12;
  static const Map<MsgStatus, Icon> statusIcon = {
    MsgStatus.sent: Icon(Icons.done, size: iconSize),
    MsgStatus.receveid: Icon(Icons.done_all, size: iconSize),
    MsgStatus.notSent: Icon(Icons.error_outline, size: iconSize),
    MsgStatus.seen:
        Icon(Icons.done_all, color: Colors.blueAccent, size: iconSize),
  };

  const ChatMsg({
    Key key,
    this.msg,
    this.msgTime,
    this.msgStatus = MsgStatus.sent,
    this.received = true,
  }) : super(key: key);

  EdgeInsets msgMargin() {
    EdgeInsets margin = this.received
        ? EdgeInsets.only(left: 6.0, bottom: 5, top: 3)
        : EdgeInsets.only(right: 6.0, bottom: 5, top: 3);
    return margin;
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          received ? FractionalOffset.centerLeft : FractionalOffset.centerRight,
      child: Container(
        constraints: BoxConstraints(maxWidth: 230.0),
        margin: msgMargin(),
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: received ? Colors.white : Colors.yellow.shade50,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Flexible(
              flex: 4,
              child: Container(
                child: Text(
                  msg,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 3),
                    child: Text(
                      msgTime,
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                  received ? null : statusIcon[msgStatus],
                ].where((Object widget) => widget != null).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

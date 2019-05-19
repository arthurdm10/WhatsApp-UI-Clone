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

  const ChatMsg({
    Key key,
    this.msg,
    this.msgTime,
    this.msgStatus,
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
        constraints: BoxConstraints(maxWidth: 210.0),
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
              flex: 2,
              child: Text(msg),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Text(
                msgTime,
                style: TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

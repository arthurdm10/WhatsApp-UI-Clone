import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chat_list_item.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ChatListItem(
            chatName: "Chat 1",
            msg: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    right: 6,
                  ),
                  child: Icon(
                    Icons.done_all,
                    size: 16,
                    color: Colors.grey.shade500,
                  ),
                ),
                Text("Test 1234"),
              ],
            ),
            msgTime: "22:44",
            muted: true,
            seen: true,
          ),
          ChatListItem(
            chatName: "Chat 2",
            msg: Text("Teste 123"),
            msgTime: "18:23",
            muted: true,
          ),
          ChatListItem(
            chatName: "Chat 3",
            msg: Text("Teste 123"),
            msgTime: "17:53",
            muted: false,
            seen: true,
          ),
          ChatListItem(
            chatName: "Chat 4",
            msg: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    right: 6,
                  ),
                  child: Icon(
                    Icons.camera_alt,
                    size: 16,
                    color: Colors.grey.shade500,
                  ),
                ),
                Text("Photo"),
              ],
            ),
            msgTime: "07:21",
            muted: true,
          ),
          ChatListItem(
            chatName: "Chat 5",
            msg: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    right: 6,
                  ),
                  child: Icon(
                    Icons.videocam,
                    size: 16,
                    color: Colors.grey.shade500,
                  ),
                ),
                Text("Video"),
              ],
            ),
            msgTime: "Ontem",
            muted: false,
          ),
        ],
      ),
    );
  }
}

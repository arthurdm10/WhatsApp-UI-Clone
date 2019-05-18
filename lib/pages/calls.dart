import 'package:flutter/material.dart';
import 'package:whatsapp_clone/call_list_item.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          CallListItem("Contato 1", "Today 17:33", false),
          CallListItem("Contato 2", "Today 08:17", true),
          CallListItem("Contato 3", "April, 24 22:42", false),
          CallListItem("Contato 4", "April, 17 13:07", true),
        ],
      ),
    );
  }
}

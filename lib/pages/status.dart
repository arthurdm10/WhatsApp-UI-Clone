import 'package:flutter/material.dart';
import 'package:whatsapp_clone/status_list_item.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: ListTile(
                  leading: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(4),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/avatar_placeholder.png"),
                          maxRadius: 20.0,
                        ),
                      ),
                      Positioned(
                        left: 27.0,
                        top: 29.0,
                        child: Container(
                          width: 22,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: Text("My status"),
                  subtitle: Text("Tap to add status update"),
                  onTap: () {},
                ),
              ),
            ],
          ),
          Container(
            color: Colors.grey.shade200,
            child: ListTile(
              dense: true,
              title: Text('Viewed updates', style: TextStyle(fontSize: 15)),
            ),
          ),
          StatusListItem(
            title: "Contato 1",
            subTitle: "Ontem 14:32",
            heroTag: "status-contato-1",
          ),
          StatusListItem(
            title: "Contato 2",
            subTitle: "Ontem 23:07",
            heroTag: "status-contato-2",
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}

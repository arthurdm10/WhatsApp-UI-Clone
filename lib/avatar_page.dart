import 'package:flutter/material.dart';

class AvatarDialog extends StatelessWidget {
  final String heroTag;
  final String avatar;

  const AvatarDialog({Key key, this.heroTag, this.avatar}) : super(key: key);

  Widget buildIcon(IconData icon, BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Icon(
        icon,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const double containerWidth = 245.0;
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.black26.withOpacity(0.65),
        body: Stack(
          children: <Widget>[
            Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Positioned(
              top: screenSize.height * 0.15,
              left: screenSize.width / 2 - containerWidth / 2,
              child: Hero(
                flightShuttleBuilder: (BuildContext flightContext,
                    Animation<double> animation,
                    HeroFlightDirection flightDirection,
                    BuildContext fromHeroContext,
                    BuildContext toHeroContext) {
                  return Container(
                    child: Column(
                      children: <Widget>[
                        Flexible(
                          child: Image.asset(
                            avatar,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                tag: heroTag,
                child: Container(
                  width: containerWidth,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          avatar,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            buildIcon(Icons.chat, context),
                            buildIcon(Icons.phone, context),
                            buildIcon(Icons.videocam, context),
                            buildIcon(Icons.info_outline, context),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

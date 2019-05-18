import 'package:flutter/material.dart';
import 'package:whatsapp_clone/avatar_page.dart';

class HeroAvatar extends StatelessWidget {
  final String imageName;
  final String heroTag;

  const HeroAvatar({
    this.imageName = "assets/avatar_placeholder.png",
    @required this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Hero(
        tag: heroTag,
        child: Container(
          child: CircleAvatar(
            backgroundImage: AssetImage(imageName),
            maxRadius: 20.0,
          ),
        ),
      ),
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            opaque: false,
            pageBuilder: (
              BuildContext context,
              _,
              __,
            ) =>
                AvatarDialog(
                  heroTag: heroTag,
                  avatar: imageName,
                ),
          ),
        );
      },
    );
  }
}

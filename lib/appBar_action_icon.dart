import 'package:flutter/material.dart';

class AppBarAcionIcon extends StatelessWidget {
  final IconData iconData;
  final GestureTapCallback onTap;
  final Color iconColor;

  const AppBarAcionIcon(
      {this.iconData, this.onTap, this.iconColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.only(
        top: 12.0,
        bottom: 12.0,
      ),
      margin: const EdgeInsets.only(right: 8.0),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(
            iconData,
            color: iconColor,
            size: 24,
          ),
        ),
        onTap: onTap != null ? onTap : () {},
      ),
    );
  }
}

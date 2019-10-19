import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  final String imagePath;
  final isOnline;
  final bool showLevel;
  final double level;
  final double imageSize = 100;
  const ProfileImageWidget({Key key, this.isOnline = false, @required this.imagePath, this.showLevel = false, this.level}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        width: imageSize,
        height: imageSize,
        child: ClipOval(
          child: Image.asset(imagePath, fit: BoxFit.cover,),
        ),
      ),
    );
  }
}
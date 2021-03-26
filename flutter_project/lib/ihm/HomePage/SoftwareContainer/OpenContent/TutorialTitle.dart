import 'package:flutter/material.dart';

class TutorialTitle extends StatelessWidget {
  final Color fontColor;
  const TutorialTitle({Key key, this.fontColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Tutoriel',
      style: TextStyle(
        fontSize: 24,
        color: fontColor,
      ),
    );
  }
}

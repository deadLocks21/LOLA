import 'package:flutter/material.dart';

class CommentaryTitle extends StatelessWidget {
  final Color fontColor;
  const CommentaryTitle({Key key, this.fontColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Commentaire',
      style: TextStyle(
        fontSize: 24,
        color: fontColor,
      ),
    );
  }
}

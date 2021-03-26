import 'package:flutter/material.dart';

class Commentary extends StatelessWidget {
  final Color fontColor;
  final String comment;
  const Commentary({Key key, this.fontColor, this.comment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
      child: RichText(
        text: TextSpan(
          text: comment,
          style: TextStyle(fontSize: 16, color: fontColor),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

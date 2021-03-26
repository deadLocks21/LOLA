import 'package:flutter/material.dart';

class SetupTitle extends StatelessWidget {
  final Color fontColor;
  const SetupTitle({Key key, this.fontColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Installateur',
      style: TextStyle(
        fontSize: 24,
        color: fontColor,
      ),
    );
  }
}

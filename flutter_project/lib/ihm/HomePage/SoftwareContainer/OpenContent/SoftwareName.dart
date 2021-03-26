import 'package:flutter/material.dart';

class SoftwareName extends StatelessWidget {
  final String name;
  final Color fontColor;
  const SoftwareName({Key key, this.name, this.fontColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Text(
        name,
        style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w500,
          color: fontColor,
        ),
      ),
    );
  }
}

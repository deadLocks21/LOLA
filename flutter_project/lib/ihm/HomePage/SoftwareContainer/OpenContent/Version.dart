import 'package:flutter/material.dart';

class Version extends StatelessWidget {
  final String version;
  final Color fontColor;
  const Version({Key key, this.version, this.fontColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Text(
        version,
        style: TextStyle(
          fontSize: 20,
          color: fontColor,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CloseFullscreenButton extends StatefulWidget {
  VoidCallback close;

  CloseFullscreenButton({Key key, this.close}) : super(key: key);

  @override
  _CloseFullscreenButtonState createState() => _CloseFullscreenButtonState();
}

class _CloseFullscreenButtonState extends State<CloseFullscreenButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      hoverColor: Color(0x00000000),
      icon: Icon(Icons.close_fullscreen_rounded),
      onPressed: this.widget.close,
    );
  }
}

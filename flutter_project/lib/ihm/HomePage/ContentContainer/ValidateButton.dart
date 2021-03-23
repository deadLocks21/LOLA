import 'package:flutter/material.dart';

class ValidateButton extends StatefulWidget {
  VoidCallback validate;
  ValidateButton({Key key, this.validate}) : super(key: key);

  @override
  _ValidateButtonState createState() => _ValidateButtonState();
}

class _ValidateButtonState extends State<ValidateButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      hoverColor: Color(0x00000000),
      splashColor: Color(0x00000000),
      icon: Icon(Icons.done),
      padding: EdgeInsets.zero,
      onPressed: this.widget.validate,
    );
  }
}

import 'package:flutter/material.dart';

class EditButton extends StatefulWidget {
  VoidCallback edit;
  EditButton({Key key, this.edit}) : super(key: key);

  @override
  _EditButtonState createState() => _EditButtonState();
}

class _EditButtonState extends State<EditButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      hoverColor: Color(0x00000000),
      icon: Icon(Icons.edit),
      padding: EdgeInsets.zero,
      onPressed: this.widget.edit,
    );
  }
}

import 'package:flutter/material.dart';

class DeleteButton extends StatefulWidget {
  VoidCallback delete;
  DeleteButton({Key key, this.delete}) : super(key: key);

  @override
  _DeleteButtonState createState() => _DeleteButtonState();
}

class _DeleteButtonState extends State<DeleteButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      hoverColor: Color(0x00000000),
      icon: Icon(Icons.delete),
      onPressed: this.widget.delete,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_project/ihm/HomePage/ContentContainer/DeleteButton.dart';
import 'package:flutter_project/ihm/HomePage/ContentContainer/EditButton.dart';
import 'package:flutter_project/ihm/HomePage/ContentContainer/ValidateButton.dart';

class ButtonsRow extends StatefulWidget {
  bool isDisplayable;
  VoidCallback edit;
  VoidCallback delete;
  VoidCallback validate;

  ButtonsRow({
    Key key,
    this.isDisplayable,
    this.edit,
    this.delete,
    this.validate,
  }) : super(key: key);

  @override
  _ButtonsRowState createState() => _ButtonsRowState();
}

class _ButtonsRowState extends State<ButtonsRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (!this.widget.isDisplayable)
          ValidateButton(validate: this.widget.validate),
        EditButton(edit: this.widget.edit),
        DeleteButton(delete: this.widget.delete),
      ],
    );
  }
}

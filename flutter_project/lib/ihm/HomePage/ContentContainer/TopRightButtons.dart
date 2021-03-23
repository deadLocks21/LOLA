import 'package:flutter/material.dart';
import 'package:flutter_project/ihm/HomePage/ContentContainer/ButtonsRow.dart';
import 'package:flutter_project/ihm/HomePage/ContentContainer/CloseFullscreenButton.dart';

class TopRightButtons extends StatefulWidget {
  bool isDisplayable;
  bool isAdmin;
  bool open;
  bool edit;
  bool delete;
  VoidCallback setOpenFalse;
  VoidCallback setEditTrue;
  VoidCallback setDeleteTrue;
  VoidCallback validate;

  TopRightButtons({
    Key key,
    this.isDisplayable,
    this.isAdmin,
    this.open,
    this.edit,
    this.delete,
    this.setOpenFalse,
    this.setEditTrue,
    this.setDeleteTrue,
    this.validate,
  }) : super(key: key);

  @override
  _TopRightButtonsState createState() => _TopRightButtonsState();
}

class _TopRightButtonsState extends State<TopRightButtons> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: AnimatedCrossFade(
        duration: const Duration(microseconds: 500),
        firstChild: Align(
          alignment: Alignment.topRight,
          child: CloseFullscreenButton(close: this.widget.setOpenFalse),
        ),
        secondChild: this.widget.delete ||
                this.widget.edit ||
                !this.widget.isAdmin ||
                this.widget.open
            ? Container(child: Text(""))
            : ButtonsRow(
                isDisplayable: this.widget.isDisplayable,
                edit: this.widget.setEditTrue,
                delete: this.widget.setDeleteTrue,
                validate: this.widget.validate,
              ),
        crossFadeState: this.widget.open
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
      ),
    );
  }
}

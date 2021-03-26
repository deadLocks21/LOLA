import 'package:flutter/material.dart';
import 'package:flutter_project/ihm/HomePage/ContentContainer/Content.dart';
import 'package:flutter_project/ihm/HomePage/ContentContainer/Decor.dart';
import 'package:flutter_project/ihm/HomePage/ContentContainer/TopRightButtons.dart';

class ContentContainer extends StatefulWidget {
  Size closeSize;
  Size openSize;
  Widget closeContent;
  Widget openContent;
  Widget editionContent;
  Widget deleteContent;
  bool isAdmin;
  bool isDisplayable;

  ContentContainer({
    Key key,
    this.openSize = const Size(800, 500),
    this.closeSize = const Size(300, 150),
    this.openContent = const Text("Open content"),
    this.closeContent = const Text("Close content"),
    this.editionContent = const Text("Edition content"),
    this.deleteContent = const Text("Delete content"),
    this.isAdmin = false,
    this.isDisplayable = false,
  }) : super(key: key);

  @override
  _ContentContainerState createState() => _ContentContainerState();
}

class _ContentContainerState extends State<ContentContainer>
    with TickerProviderStateMixin {
  bool open = false;
  bool edit = false;
  bool delete = false;

  @override
  Widget build(BuildContext context) {
    var sup = this.widget;
    return Container(
      margin: EdgeInsets.all(20),
      child: GestureDetector(
        child: AnimatedContainer(
          width: open ? sup.openSize.width : sup.closeSize.width,
          height: open ? sup.openSize.height : sup.closeSize.height,
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          child: Stack(
            children: [
              Content(
                sup: this.widget,
                open: this.open,
                edit: this.edit,
                delete: this.delete,
              ),
              TopRightButtons(
                isDisplayable: sup.isDisplayable,
                isAdmin: sup.isAdmin,
                open: this.open,
                edit: this.edit,
                delete: this.delete,
                setOpenFalse: setOpenFalse,
                setEditTrue: setEditTrue,
                setDeleteTrue: setDeleteTrue,
                validate: validate,
              ),
            ],
          ),
          decoration: Decor.getBox(sup.isDisplayable),
        ),
        onTap: !edit && !delete
            ? () {
                setState(() {
                  open = true;
                });
              }
            : null,
      ),
    );
  }

  void validate() {
    print("ContentContainer validé");
  }

  void setDeleteTrue() {
    setState(() {
      delete = true;
    });
  }

  void setEditTrue() {
    setState(() {
      edit = true;
    });
  }

  void setOpenFalse() {
    setState(() {
      open = false;
    });
  }
}

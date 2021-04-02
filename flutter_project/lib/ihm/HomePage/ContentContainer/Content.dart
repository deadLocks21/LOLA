import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  bool open;
  bool edit;
  bool delete;
  Widget closeContent;
  Widget openContent;
  Widget editContent;
  Widget deleteContent;

  Content({
    Key key,
    this.open,
    this.edit,
    this.delete,
    this.closeContent,
    this.openContent,
    this.editContent,
    this.deleteContent,
  }) : super(key: key);

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  var sup;
  @override
  Widget build(BuildContext context) {
    sup = this.widget;
    return Align(
      child: AnimatedCrossFade(
        duration: const Duration(seconds: 1),
        firstChild: sup.editContent,
        secondChild: AnimatedCrossFade(
          duration: const Duration(seconds: 1),
          firstChild: sup.deleteContent,
          secondChild: AnimatedCrossFade(
            duration: const Duration(seconds: 1),
            firstChild: sup.openContent,
            secondChild: sup.closeContent,
            crossFadeState:
                sup.open ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),
          crossFadeState:
              sup.delete ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
        crossFadeState:
            sup.edit ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      ),
      alignment: Alignment.center,
    );
  }
}

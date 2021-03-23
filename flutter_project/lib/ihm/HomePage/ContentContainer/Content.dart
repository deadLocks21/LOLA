import 'package:flutter/material.dart';
import 'package:flutter_project/ihm/HomePage/ContentContainer/ContentContainer.dart';

class Content extends StatefulWidget {
  ContentContainer sup;
  bool open;
  bool edit;
  bool delete;
  Content({Key key, this.sup, this.open, this.edit, this.delete})
      : super(key: key);

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
        firstChild: sup.sup.editionContent,
        secondChild: AnimatedCrossFade(
          duration: const Duration(seconds: 1),
          firstChild: sup.sup.deleteContent,
          secondChild: AnimatedCrossFade(
            duration: const Duration(seconds: 1),
            firstChild: sup.sup.openContent,
            secondChild: sup.sup.closeContent,
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

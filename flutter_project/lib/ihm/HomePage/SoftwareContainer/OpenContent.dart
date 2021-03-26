import 'package:flutter/material.dart';
import 'package:flutter_project/ihm/HomePage/SoftwareContainer/OpenContent/Commentary.dart';
import 'package:flutter_project/ihm/HomePage/SoftwareContainer/OpenContent/CommentaryTitle.dart';
import 'package:flutter_project/ihm/HomePage/SoftwareContainer/OpenContent/Link.dart';
import 'package:flutter_project/ihm/HomePage/SoftwareContainer/OpenContent/SetupTitle.dart';
import 'package:flutter_project/ihm/HomePage/SoftwareContainer/OpenContent/SoftwareName.dart';
import 'package:flutter_project/ihm/HomePage/SoftwareContainer/OpenContent/TutorialTitle.dart';
import 'package:flutter_project/ihm/HomePage/SoftwareContainer/OpenContent/Version.dart';
import 'package:flutter_project/logic/Software.dart';

class OpenContent extends StatefulWidget {
  final Color fontColor;
  final Software soft;
  OpenContent({Key key, this.fontColor, this.soft}) : super(key: key);

  @override
  _OpenContentState createState() => _OpenContentState(soft, fontColor);
}

class _OpenContentState extends State<OpenContent> {
  Software soft;
  Color fontColor;

  _OpenContentState(this.soft, this.fontColor);

  @override
  Widget build(BuildContext context) {
    fontColor = this.widget.fontColor;
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SoftwareName(name: soft.name, fontColor: fontColor),
            if (soft.version != "")
              Version(version: soft.version, fontColor: fontColor),
            if (soft.commentary != "") CommentaryTitle(fontColor: fontColor),
            if (soft.commentary != "")
              Commentary(comment: soft.commentary, fontColor: fontColor),
            if (soft.tuto != "") TutorialTitle(fontColor: fontColor),
            if (soft.tuto != "") Link(link: soft.tuto),
            if (soft.setup != "") SetupTitle(fontColor: fontColor),
            if (soft.setup != "") Link(link: soft.setup),
          ],
        ),
      ),
    );
  }
}

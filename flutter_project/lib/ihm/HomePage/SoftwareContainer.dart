import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_project/ihm/HomePage/ContentContainer/ContentContainer.dart';
import 'package:flutter_project/ihm/HomePage/SoftwareContainer/CloseContent.dart';
import 'package:flutter_project/ihm/HomePage/SoftwareContainer/OpenContent.dart';
import 'package:flutter_project/logic/Software.dart';

class SoftwareContainer extends StatefulWidget {
  Software software;
  SoftwareContainer({Key key, this.software}) : super(key: key);

  @override
  SoftwareContainerState createState() => SoftwareContainerState(software);
}

class SoftwareContainerState extends State<SoftwareContainer> {
  Software soft;
  SoftwareContainerState(this.soft);

  @override
  Widget build(BuildContext context) {
    return ContentContainer(
      closeSize: closeSize,
      openSize: openSize,
      closeContent: CloseContent(
        soft: soft,
      ),
      openContent: OpenContent(
        soft: soft,
        fontColor: fontColor,
      ),
    );
  }

  final fontColor = Color(0xFF333333);

  Size closeSize = Size(200, 200);
  Size openSize = Size(450, 450);
}

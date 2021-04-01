import 'package:flutter/material.dart';
import 'package:flutter_project/ihm/HomePage/ContentContainer/ContentContainer.dart';
import 'package:flutter_project/ihm/HomePage/SectorContainer/CloseContent.dart';
import 'package:flutter_project/ihm/HomePage/SectorContainer/OpenContent.dart';
import 'package:flutter_project/logic/Sector.dart';

class SectorContainer extends StatefulWidget {
  Sector sector;
  SectorContainer({Key key, this.sector}) : super(key: key);

  @override
  _SectorContainerState createState() => _SectorContainerState(sector: sector);
}

class _SectorContainerState extends State<SectorContainer> {
  Sector sector;
  _SectorContainerState({this.sector});

  @override
  Widget build(BuildContext context) {
    return ContentContainer(
      isDisplayable: true,
      closeSize: closeSize,
      openSize: openSize,
      closeContent: CloseContent(sector: sector),
      openContent: OpenContent(
        sector: sector,
      ),
    );
  }

  Size closeSize = Size(400, 200);
  Size openSize = Size(1200, 700);
}

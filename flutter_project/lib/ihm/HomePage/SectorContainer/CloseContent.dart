import 'package:flutter/material.dart';
import 'package:flutter_project/logic/Sector.dart';

class CloseContent extends StatelessWidget {
  Sector sector;
  CloseContent({Key key, this.sector}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(sector.sector,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            )),
        Text(sector.semester,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            )),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_project/ihm/HomePage/CourseContainer.dart';
import 'package:flutter_project/logic/Course.dart';
import 'package:flutter_project/logic/Sector.dart';

class OpenContent extends StatelessWidget {
  Sector sector;
  OpenContent({Key key, this.sector}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              sector.sector + " " + sector.semester,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (Course c in sector.courses)
                    CourseContainer(
                      course: c,
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_project/ihm/HomePage/SoftwareContainer.dart';
import 'package:flutter_project/logic/Course.dart';
import 'package:flutter_project/logic/Software.dart';

class OpenContent extends StatefulWidget {
  Course course;
  OpenContent({Key key, this.course}) : super(key: key);

  @override
  _OpenContentState createState() => _OpenContentState(course: course);
}

class _OpenContentState extends State<OpenContent> {
  Course course;
  _OpenContentState({this.course});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              course.name,
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
                  for (Software s in course.softwares)
                    SoftwareContainer(
                      software: s,
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

import 'package:flutter/material.dart';
import 'package:flutter_project/ihm/HomePage/ContentContainer/ContentContainer.dart';
import 'package:flutter_project/ihm/HomePage/CourseContainer/CloseContent.dart';
import 'package:flutter_project/ihm/HomePage/CourseContainer/OpenContent.dart';
import 'package:flutter_project/logic/Course.dart';

class CourseContainer extends StatefulWidget {
  Course course;
  CourseContainer({Key key, this.course}) : super(key: key);

  @override
  _CourseContainerState createState() => _CourseContainerState(course: course);
}

class _CourseContainerState extends State<CourseContainer> {
  Course course;
  _CourseContainerState({this.course});

  @override
  Widget build(BuildContext context) {
    return ContentContainer(
      isDisplayable: course.display,
      closeSize: closeSize,
      openSize: openSize,
      closeContent: CloseContent(
        course: this.course,
      ),
      openContent: OpenContent(course: this.course),
    );
  }

  Size closeSize = Size(300, 300);
  Size openSize = Size(800, 550);
}

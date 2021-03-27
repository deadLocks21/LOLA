import 'package:flutter/material.dart';
import 'package:flutter_project/logic/Course.dart';

class CloseContent extends StatelessWidget {
  Course course;
  CloseContent({Key key, this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (course.picture != "")
          Container(
            padding: EdgeInsets.only(bottom: 10),
            width: 240,
            height: 240,
            child: Image.asset(course.picture),
          ),
        Text(
          course.name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}

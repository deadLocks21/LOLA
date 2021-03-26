import 'package:flutter/material.dart';
import 'package:flutter_project/logic/Software.dart';
import 'package:flutter_project/ihm/HomePage/SoftwareContainer.dart';

class Content extends StatefulWidget {
  Content({Key key}) : super(key: key);

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      height: MediaQuery.of(context).size.height - 108,
      width: MediaQuery.of(context).size.width - 32,
      alignment: Alignment.center,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 10; i++)
              SoftwareContainer(
                software: new Software(i),
              ),
          ],
        ),
      ),
    );
  }
}

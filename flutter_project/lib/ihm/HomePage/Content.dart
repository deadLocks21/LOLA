import 'package:flutter/material.dart';
import 'package:flutter_project/dao/SectorDAO.dart';
import 'package:flutter_project/ihm/HomePage/CourseContainer.dart';
import 'package:flutter_project/ihm/HomePage/SectorContainer.dart';
import 'package:flutter_project/logic/Course.dart';
import 'package:flutter_project/logic/Sector.dart';
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
        child: FutureBuilder<Row>(
          future: SectorDao.getAllSectors(),
          builder: (BuildContext context, AsyncSnapshot<Row> snapshot) {
            Row child;
            if (snapshot.hasData) {
              child = snapshot.data;
            } else if (snapshot.hasError) {
              child = Row(
                children: [
                  Column(
                    children: [
                      const Icon(
                        Icons.error_outline,
                        color: Colors.red,
                        size: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text('Error: ${snapshot.error}'),
                      )
                    ],
                  ),
                ],
              );
            } else {
              child = Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        child: CircularProgressIndicator(),
                        width: 60,
                        height: 60,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text('Awaiting result...'),
                      )
                    ],
                  ),
                ],
              );
            }
            return child;
          },
        ),
      ),
    );
  }
}

/* Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
          ],
        ) */

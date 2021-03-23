import 'package:flutter/material.dart';
import 'package:flutter_project/ihm/HomePage/Bar.dart';
import 'package:flutter_project/ihm/HomePage/Content.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Bar(),
            Content(),
          ],
        ),
      ),
    );
  }
}

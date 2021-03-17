import 'package:flutter/material.dart';
import 'package:flutter_project/Bar/BarDecoration.dart';
import 'package:flutter_project/Bar/BarTitle.dart';
import 'package:flutter_project/Bar/Logo.dart';
import 'package:flutter_project/Bar/LogoutButton.dart';

class Bar extends StatefulWidget {
  Bar({Key key}) : super(key: key);

  @override
  _BarState createState() => _BarState();
}

class _BarState extends State<Bar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 76,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Row(
              children: [
                Logo(),
                BarTitle(),
              ],
            ),
            LogoutButton()
          ],
        ),
      ),
      decoration: BarDecoration.deco,
    );
  }
}

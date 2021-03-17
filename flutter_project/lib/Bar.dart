import 'package:flutter/material.dart';

/* class Bar extends StatelessWidget implements PreferredSizeWidget {
  AppBar theBar;
  Bar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    theBar = AppBar(
      title: Text(
        "Liste Omnisciente des Logiciels et Applications",
        style: TextTheme().headline1,
      ),
      // backgroundColor: Colors.white,
    );
    return theBar;
  }

  @override
  Size get preferredSize => theBar.preferredSize;
} */
class Bar extends StatefulWidget implements PreferredSizeWidget {
  Size size = Size(100, 100);
  Bar({Key key}) : super(key: key);

  @override
  _BarState createState() => _BarState();

  @override
  Size get preferredSize => size;
}

class _BarState extends State<Bar> {
  @override
  void initState() {
    super.initState();
    this.widget.size = Size(MediaQuery.of(context).size.width, 16);
  }

  @override
  Widget build(BuildContext context) {
    this.widget.size = Size(MediaQuery.of(context).size.width, 16);
    return AppBar(
      title: Text(
        "Liste Omnisciente des Logiciels et Applications",
        style: TextStyle(
            color: Color(0xFF444444),
            fontWeight: FontWeight.bold,
            fontSize: 50),
      ),
      // backgroundColor: Colors.white,
    );
  }
}

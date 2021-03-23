import 'package:flutter/material.dart';

class BarTitle extends StatelessWidget {
  const BarTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Liste Omnisciente des Logiciels et Applications",
      style: TextStyle(
        color: Color(0xFF444444),
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
    );
  }
}

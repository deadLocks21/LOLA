import 'package:flutter/material.dart';
import 'package:flutter_project/logic/Software.dart';

class CloseContent extends StatelessWidget {
  final Software soft;
  const CloseContent({Key key, this.soft}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (soft.picture != "")
          Container(
            padding: EdgeInsets.only(bottom: 10),
            width: 140,
            height: 140,
            child: Image.asset(soft.picture),
          ),
        Text(
          soft.name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}

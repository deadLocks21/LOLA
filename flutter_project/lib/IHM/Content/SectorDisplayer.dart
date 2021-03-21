import 'package:flutter/material.dart';

class SectorDisplayer extends StatefulWidget {
  SectorDisplayer({Key key}) : super(key: key);

  @override
  _SectorDisplayerState createState() => _SectorDisplayerState();
}

class _SectorDisplayerState extends State<SectorDisplayer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: InkWell(
        child: Container(
          width: 200,
          height: 100,
          child: Stack(
            children: [
              Align(
                child: Text("Formation 01"),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.person_pin_circle),
                    Icon(Icons.tram_sharp),
                  ],
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        ),
        onTap: () => print("Tap formation 01"),
      ),
    );
  }
}

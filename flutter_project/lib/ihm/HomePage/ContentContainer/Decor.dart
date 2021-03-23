import 'package:flutter/material.dart';

class Decor {
  static getBox(isDisplayable) => BoxDecoration(
        color: isDisplayable ? Colors.white : Colors.white30,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      );
}

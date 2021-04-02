import 'package:flutter/material.dart';
import 'package:flutter_project/ihm/HomePage/SectorContainer.dart';
import 'package:flutter_project/logic/Course.dart';
import 'package:flutter_project/logic/Memory.dart';
import 'package:flutter_project/logic/Sector.dart';
import 'package:flutter_project/logic/Software.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class SectorDao {
  static Future<Row> getAllSectors() async {
    var response;
    List<Sector> sectors = [];

    try {
      String login;

      if (await Memory.admin.isAdmin())
        login = '61646d696e';
      else
        login = Memory.admin.login;

      var url = Uri.https('timothe.hofmann.fr', 'LOLA/api/v2/sectors/' + login);

      response = await http.get(url);
    } catch (e) {
      print(e);
    }

    if (response.statusCode == 200) {
      List jsonResponse = convert.jsonDecode(response.body);
      for (int i = 0; i < jsonResponse.length; i++) {
        Sector s = new Sector.fromJson(jsonResponse[i]);
        s.getCourses();
        sectors.add(s);
      }
    }

    Row row = Row(
      children: [
        for (int i = 0; i < sectors.length; i++)
          SectorContainer(
            sector: sectors[i],
          ),
      ],
    );

    return row;
  }
}

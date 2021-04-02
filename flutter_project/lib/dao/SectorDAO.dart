import 'package:flutter/material.dart';
import 'package:flutter_project/ihm/HomePage/SectorContainer.dart';
import 'package:flutter_project/logic/Course.dart';
import 'package:flutter_project/logic/Sector.dart';
import 'package:flutter_project/logic/Software.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class SectorDao {
  static Future<String> getAll() async {
    String result = "";

    try {
      var url = Uri.https('timothe.hofmann.fr', 'LOLA/api/software/1');

      var response = await http.get(url);
      result = response.body;
    } catch (e) {
      print(e);
    }

    return result;
  }

  static Future<Row> getAllSectors() async {
    print(await getAll());
    /* if (response.statusCode == 200) {
      // var jsonResponse = convert.jsonDecode(response.body);
      //var itemCount = jsonResponse['totalItems'];
      print(response.body);
      print('Number of books about http:.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    } */

    Row row = Row(
      children: [
        for (int i = 0; i < 5; i++)
          SectorContainer(
            sector: new Sector(
              0,
              courses: [
                for (int i = 0; i < 4; i++)
                  new Course(
                    0,
                    display: true,
                    softwares: [
                      for (int i = 0; i < 6; i++)
                        new Software(0, display: true),
                    ],
                  ),
              ],
            ),
          )
      ],
    );

    return row;
  }
}

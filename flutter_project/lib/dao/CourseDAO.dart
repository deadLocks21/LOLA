import 'dart:convert';

import 'package:flutter_project/logic/Course.dart';
import 'package:http/http.dart' as http;

class CourseDAO {
  static Future<List<Course>> getAll(int id) async {
    List<Course> courses = [];
    var url =
        Uri.https('timothe.hofmann.fr', 'LOLA/api/v2/courses/' + id.toString());

    var response = await http.get(url);

    if (response.statusCode == 200) {
      List jsonResponse = jsonDecode(response.body);
      for (int i = 0; i < jsonResponse.length; i++) {
        Course c = new Course.fromJson(jsonResponse[i]);
        c.getSoftwares();
        courses.add(c);
      }
    }

    return courses;
  }
}

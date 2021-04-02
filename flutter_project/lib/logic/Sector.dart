import 'package:flutter_project/dao/CourseDAO.dart';
import 'package:flutter_project/logic/Course.dart';

class Sector {
  int _id;
  int get id => _id;
  String code;
  String sector;
  String semester;
  List<Course> courses;

  Sector(
    id, {
    this.code = "DUT INFO S0",
    this.sector = "DUT Informatique",
    this.semester = "Semestre 00",
    this.courses,
  }) {
    this._id = id;
  }

  Sector.fromJson(Map<String, dynamic> json)
      : _id = json['id'],
        code = json['code'],
        sector = json['sector'],
        semester = json['semester'];

  toJson() => {
        'id': _id,
        'code': code,
        'sector': sector,
        'semester': semester,
      };

  getCourses() async {
    List<Course> tempCourses = [];
    tempCourses = await CourseDAO.getAll(_id);

    courses = tempCourses;
  }
}

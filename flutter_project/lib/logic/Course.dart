import 'package:flutter_project/logic/Software.dart';

class Course {
  int _id;
  int get id => _id;
  String code;
  String name;
  String picture;
  bool display;
  List<Software> softwares;

  Course(
    id, {
    this.code = "M0000",
    this.name = "Module de test",
    this.picture = "courses/M3101.png",
    this.display = false,
    this.softwares,
  }) {
    this._id = id;
  }

  Course.fromJson(Map<String, dynamic> json)
      : _id = json['id'],
        code = json['code'],
        name = json['name'],
        picture = json['picture'],
        display = json['display'] == "1";

  toJson() => {
        'id': _id,
        'code': code,
        'name': name,
        'picture': picture,
        'display': display ? 1 : 0,
      };

  getSoftwares() async {
    // TODO Make the req
  }
}

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_project/logic/Software.dart';

class SoftwareDAO {
  static getAll(int id) async {
    List<Software> softwares = [];
    var url = Uri.https(
        'timothe.hofmann.fr', 'LOLA/api/v2/softwares/' + id.toString());

    var response = await http.get(url);

    if (response.statusCode == 200) {
      List jsonResponse = jsonDecode(response.body);
      for (int i = 0; i < jsonResponse.length; i++)
        softwares.add(new Software.fromJson(jsonResponse[i]));
    }

    return softwares;
  }
}

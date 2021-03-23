/// Logiciel de la base de données.
class Software {
  int _id;
  int get id => _id;
  String name;
  String version;
  String tuto;
  String setup;
  String commentary;
  String picture;
  bool display;

  Software.fromJson(Map<String, dynamic> json)
      : _id = json['id'],
        name = json['name'],
        version = json['version'],
        tuto = json['tuto'],
        setup = json['setup'],
        commentary = json['commentary'],
        picture = json['picture'],
        display = json['display'] == "1";

  toJson() => {
        'id': _id,
        'name': name,
        'version': version,
        'tuto': tuto,
        'setup': setup,
        'commentary': commentary,
        'picture': picture,
        'display': display ? 1 : 0,
      };
}

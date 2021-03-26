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

  Software(
    id, {
    this.name = "Laragon",
    this.version = "1.0.0",
    this.tuto = "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
    this.setup = "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
    this.commentary =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sit amet risus et justo lacinia aliquam ut nec diam. Suspendisse et imperdiet arcu. Maecenas facilisis, mauris quis finibus pretium, lacus nisi ultrices justo, non varius metus turpis id proin.",
    this.picture = "softwares/laragon.png",
    this.display = true,
  }) {
    this._id = id;
  }

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

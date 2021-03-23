class User {
  int _id;
  int get id => _id;
  String login;

  User.fromJson(Map<String, dynamic> json)
      : _id = json['id'],
        login = json['login'];

  toJson() => {
        'id': _id,
        'login': login,
      };

  Future<bool> isAdmin() async {
    // TODO Add the verification
    return false;
  }
}

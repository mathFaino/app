class User {
  int id;
  String username;
  bool isActive;
  String pass;

  User({this.id, this.username, this.isActive, this.pass});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    isActive = json['is_active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['is_active'] = this.isActive;
    data['password'] = this.pass;
    return data;
  }
}
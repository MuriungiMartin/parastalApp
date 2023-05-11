
import 'dart:convert';

Usr AppUsersFromJson(String str) => Usr.fromJson(json.decode(str));
String AppUsersToJson(Usr data)=> json.encode(data.toJson());

class Usr {
  List<AppUsers>? Users;

  Usr({
    this.Users,
  });

  factory Usr.fromJson(Map<String, dynamic> json) =>
      Usr(
        Users: List<AppUsers>.from(
            json["data"].map((x) => AppUsers.fromJson(x))),
      );

  Map<String, dynamic> toJson() =>
      {
        "data": List<dynamic>.from(Users!.map((x) => x.toJson())),
      };

}

class AppUsers
{
  String? Name;
  String? username;
  String? password;
  String? email;
  String? confirmPassword;

  AppUsers({
    this.Name,
    this.username,
    this.password,
    this.email,
    this.confirmPassword,
  });

AppUsers.fromJson(Map<String, dynamic> json) {
    Name = json['Name'];
    username = json['username'];
    password = json['password'];
    email = json['email'];
    confirmPassword = json['confirmPassword'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.Name;
    data['username'] = this.username;
    data['password'] = this.password;
    data['email'] = this.email;
    data['confirmPassword'] = this.confirmPassword;
    return data;
  }

}
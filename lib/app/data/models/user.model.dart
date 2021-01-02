// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.createdAt,
    this.updatedAt,
    this.fullName,
    this.email,
    this.height,
    this.weight,
    this.unit,
  });

  DateTime createdAt;
  DateTime updatedAt;
  FullName fullName;
  String email;
  int height;
  int weight;
  String unit;

  factory User.fromJson(Map<String, dynamic> json) => User(
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        fullName: FullName.fromJson(json["fullName"]),
        email: json["email"],
        height: json["height"],
        weight: json["weight"],
        unit: json["unit"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "fullName": fullName.toJson(),
        "email": email,
        "height": height,
        "weight": weight,
        "unit": unit,
      };
}

class FullName {
  FullName({
    this.fullName,
    this.height,
    this.weight,
    this.unit,
    this.targetWeight,
  });

  String fullName;
  int height;
  int weight;
  String unit;
  int targetWeight;

  factory FullName.fromJson(Map<String, dynamic> json) => FullName(
        fullName: json["full_name"],
        height: json["height"],
        weight: json["weight"],
        unit: json["unit"],
        targetWeight: json["target_weight"],
      );

  Map<String, dynamic> toJson() => {
        "full_name": fullName,
        "height": height,
        "weight": weight,
        "unit": unit,
        "target_weight": targetWeight,
      };
}

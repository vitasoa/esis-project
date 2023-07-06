// ignore_for_file: non_constant_identifier_names, file_names

import 'dart:convert';

class Commune {
  int id;
  String name;
  String? code;
  String? password;
  int id_district;

  static const String model = 'a.sise.communes';
  static const List<String> fields = [
    'id',
    '__last_update',
    'name',
    'code',
    'password',
    'id_district'
  ];

  Commune(
      {required this.id,
      required this.name,
      this.code,
      this.password,
      required this.id_district});

  Commune.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        code = json['code'],
        password = json['password'],
        id_district = json['id_district'][0];

  Commune.fromJsonLocal(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        code = json['code'],
        password = json['password'],
        id_district = json['id_district'];

  static fromJsonArray(List json) {
    return json.map((e) => Commune.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'code': code,
      'password': password,
      'id_district': id_district,
    };
  }

  @override
  String toString() {
    return jsonEncode(toJson());
  }

  Commune.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        code = map['code'],
        password = map['password'],
        id_district = map['id_district'];

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'name': name,
      'code': code,
      'password': password,
      'id_district': id_district,
    };
    return map;
  }
}

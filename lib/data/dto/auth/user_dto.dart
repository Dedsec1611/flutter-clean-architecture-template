import 'dart:convert';

import 'package:flutter_clean_architecture/domain/entities/auth/user.dart';

class UserDTO extends UserEntity {
  
  UserDTO({super.id, super.name, super.surname, super.userName, super.email});
  // ---------------------------------------------------------------------------
  // JSON
  // ---------------------------------------------------------------------------
  factory UserDTO.fromRawJson(String str) => UserDTO.fromMap(json.decode(str));

  String toRawJson() => json.encode(toMap());

  // ---------------------------------------------------------------------------
  // Maps
  // ---------------------------------------------------------------------------
  factory UserDTO.fromMap(Map<String, dynamic> json) => UserDTO(
        id: json['id'],
        name: json['name'],
        surname: json['surname'],
        userName: json['userName'],
        email: json['email'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'surname': surname,
        'username': userName,
        'email': email,
      };
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CreateUserReq {
  final String username;
  final String email;
  final String password;

  CreateUserReq({required this.username, required this.email, required this.password});


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'email': email,
      'password': password,
    };
  }

  factory CreateUserReq.fromMap(Map<String, dynamic> map) {
    return CreateUserReq(
      username: map['username'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CreateUserReq.fromJson(String source) => CreateUserReq.fromMap(json.decode(source) as Map<String, dynamic>);
}

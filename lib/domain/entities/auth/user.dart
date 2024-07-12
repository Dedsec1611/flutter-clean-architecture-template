import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  String? id;
  String? name;
  String? surname;
  String? userName;
  String? email;

  UserEntity({this.id, this.name, this.surname, this.userName, this.email});

  @override
  List<Object?> get props => [id, name, surname, userName, email];
}

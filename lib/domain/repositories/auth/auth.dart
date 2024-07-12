import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/data/dto/auth/create_user_request.dart';

abstract class AuthRepository {
  Future<Either> signup(CreateUserReq createUserReq);
  Future<Either> signin();
}

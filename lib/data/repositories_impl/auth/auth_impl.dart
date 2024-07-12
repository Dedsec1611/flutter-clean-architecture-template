import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/data/dto/auth/create_user_request.dart';
import 'package:flutter_clean_architecture/domain/repositories/auth/auth.dart';
import 'package:flutter_clean_architecture/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async{
        return await sl<AuthRepository>().signup(createUserReq);
  }
  
}
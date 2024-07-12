import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/usecase/usecase.dart';
import 'package:flutter_clean_architecture/data/dto/auth/create_user_request.dart';
import 'package:flutter_clean_architecture/domain/repositories/auth/auth.dart';
import 'package:flutter_clean_architecture/service_locator.dart';

class SigninUseCase implements UseCase<Either, CreateUserReq> {
  // logica di business

  @override
  Future<Either> call({CreateUserReq? params}) {
   return sl<AuthRepository>().signup(params!);
  }
}

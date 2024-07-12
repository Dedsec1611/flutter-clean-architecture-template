import 'package:flutter_clean_architecture/data/repositories_impl/auth/auth_impl.dart';
import 'package:flutter_clean_architecture/data/sources/auth/auth_service_impl.dart';
import 'package:flutter_clean_architecture/domain/repositories/auth/auth.dart';
import 'package:flutter_clean_architecture/domain/usecases/auth/signin_use_case.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> inizializeDependencies() async {
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  sl.registerSingleton<AuthService>(AuthServiceImpl());
  sl.registerSingleton<SigninUseCase>(SigninUseCase());
}

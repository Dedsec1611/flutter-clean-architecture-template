import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/data/dto/auth/create_user_request.dart';

abstract class AuthService {
  Future<Either> signup(CreateUserReq createUserReq);

  Future<Either> signin();
}

class AuthServiceImpl extends AuthService {
  //comunica con api client e db
  //chiamate api

  @override
  Future<Either> signin() async{
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(createUserReq) async {
    try {
      //  var data =  await FirebaseAuth.instance.createUserWithEmailAndPassword(
      //     email: createUserReq.email,
      //     password:createUserReq.password
      //   );

      //   FirebaseFirestore.instance.collection('Users').doc(data.user?.uid)
      //   .set(
      //     {
      //       'name' : createUserReq.fullName,
      //       'email' : data.user?.email,
      //     }
      //   );

      return const Right('Signup was Successful');
    } on Exception catch (e) {
      String message = '';

      if (e.toString() == 'weak-password') {
        message = 'The password provided is too weak';
      } else if (e.toString == 'email-already-in-use') {
        message = 'An account already exists with that email.';
      }
      return Left(message);
    }
  }
}

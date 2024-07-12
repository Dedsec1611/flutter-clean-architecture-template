import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/data/dto/auth/create_user_request.dart';
import 'package:flutter_clean_architecture/domain/usecases/auth/signin_use_case.dart';
import 'package:flutter_clean_architecture/service_locator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: FilledButton.tonal(
                onPressed: () async {
                  var result = await sl<SigninUseCase>().call(
                      params: CreateUserReq(
                          email: 'test@gmail.com',
                          password: 'Test',
                          username: "Tester"));
                  result.fold((l) {
                    var snackbar = SnackBar(
                      content: Text(l),
                      behavior: SnackBarBehavior.floating,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  }, (r) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const HomePage()),
                        (route) => false);
                  });
                },
                child: const Text("SIGNUP")),
          )
        ],
      ),
    );
  }
}

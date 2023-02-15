import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../router/app_router.dart';
import '../cubit/firebase_auth_cubit.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FirebaseAuthCubit, FirebaseAuthState>(
      listener: (context, authState) {
        if (authState is FirebaseAuthAuthenticated) {
          context.goNamed(
            AppRoute.home.name,
          );
          const SnackBar(
            content: Text('Sukses'),
            duration: Duration(
              seconds: 5,
            ),
          );
        }
        if (authState is FirebaseAuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(authState.errMessage),
              duration: const Duration(
                seconds: 5,
              ),
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: ElevatedButton(
              child: const Text('Google Sign In'),
              onPressed: () {
                BlocProvider.of<FirebaseAuthCubit>(context).signInWithGoogle();
              },
            ),
          ),
        );
      },
    );
  }
}

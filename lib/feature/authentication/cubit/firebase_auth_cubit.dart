import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'firebase_auth_state.dart';

class FirebaseAuthCubit extends Cubit<FirebaseAuthState> {
  final FirebaseAuth auth;
  FirebaseAuthCubit({
    required this.auth,
  }) : super(FirebaseAuthInitial());

  void signInWithGoogle() async {
    try {
      if (kIsWeb) {
        GoogleAuthProvider googleProvider = GoogleAuthProvider();
        UserCredential userCredential =
            await auth.signInWithPopup(googleProvider);
        log('userCredential = $userCredential');
        emit(FirebaseAuthAuthenticated(userCredential: userCredential));
      } else {
        final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

        final GoogleSignInAuthentication? googleAuth =
            await googleUser?.authentication;

        if (googleAuth?.accessToken != null && googleAuth?.idToken != null) {
          // Create a new credential
          final credential = GoogleAuthProvider.credential(
            accessToken: googleAuth?.accessToken,
            idToken: googleAuth?.idToken,
          );
          UserCredential userCredential =
              await auth.signInWithCredential(credential);
          emit(FirebaseAuthAuthenticated(userCredential: userCredential));
        }
      }
    } on FirebaseAuthException catch (e) {
      emit(FirebaseAuthFailed(errMessage: e.message ?? 'error'));
    }
  }
}

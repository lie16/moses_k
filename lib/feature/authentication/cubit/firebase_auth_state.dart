part of 'firebase_auth_cubit.dart';

abstract class FirebaseAuthState {}

class FirebaseAuthInitial with FirebaseAuthState {}

class FirebaseAuthAuthenticate with FirebaseAuthState {
  FirebaseAuthAuthenticate();
}

class FirebaseAuthAuthenticated with FirebaseAuthState {
  final UserCredential userCredential;
  FirebaseAuthAuthenticated({
    required this.userCredential,
  });
}

class FirebaseAuthFailed with FirebaseAuthState {
  final String errMessage;
  FirebaseAuthFailed({required this.errMessage});
}

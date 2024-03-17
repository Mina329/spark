import 'package:firebase_auth/firebase_auth.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/utils/strings_manager.dart';


class FirebaseAuthFailure extends Failure {
  FirebaseAuthFailure({required super.message});

  factory FirebaseAuthFailure.fromFirebaseAuthException(
      FirebaseAuthException exception) {
    switch (exception.code) {
      case 'email-already-in-use':
        return FirebaseAuthFailure(
          message: StringsManager.emailAlreadyInUse,
        );
      case 'invalid-email':
        return FirebaseAuthFailure(
          message: StringsManager.invalidEmail,
        );
      case 'operation-not-allowed:':
        return FirebaseAuthFailure(
          message: StringsManager.operationNotAllowed,
        );
      case 'weak-password':
        return FirebaseAuthFailure(
          message: StringsManager.weakPassword,
        );
      case 'user-disabled':
        return FirebaseAuthFailure(
          message: StringsManager.userDisabled,
        );
      case 'user-not-found':
        return FirebaseAuthFailure(
          message: StringsManager.userNotRegistered,
        );
      case 'wrong-password':
        return FirebaseAuthFailure(
          message: StringsManager.wrongPassword,
        );
      case 'invalid-credential':
        return FirebaseAuthFailure(
          message: StringsManager.wrongCredentials,
        );
      case 'account-exists-with-different-credential':
        return FirebaseAuthFailure(
          message: StringsManager.accountExistsWithDifferentCredential,
        );
      default:
        return FirebaseAuthFailure(
          message: exception.code,
        );
    }
  }
}

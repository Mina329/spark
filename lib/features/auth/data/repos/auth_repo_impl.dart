import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/errors/firebase_auth_failure.dart';
import 'package:spark/features/auth/domain/entities/user_data.dart';
import 'package:spark/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuth _firebaseAuth;

  AuthRepoImpl({required FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth;

  @override
  Future<Either<Failure, void>> addFavouriteGenres() {
    // TODO: implement addFavouriteGenres
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> emailVerify() {
    // TODO: implement emailVerify
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> forgetPassword(String email) {
    // TODO: implement forgetPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> logInUserWithEmailAndPassword(
      UserData user) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );
      return right(null);
    } on FirebaseAuthException catch (e) {
      return left(
        FirebaseAuthFailure.fromFirebaseAuthException(e),
      );
    }
  }

  @override
  Future<Either<Failure, void>> logInUserWithFacebook() {
    // TODO: implement logInUserWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> logInUserWithGoogle() {
    // TODO: implement logInUserWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> logInUserWithX() {
    // TODO: implement logInUserWithX
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> signUpUserWithEmailAndPassword(
      UserData user) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );
      User? firebaseUser = userCredential.user;
      if (firebaseUser != null) {
        await firebaseUser.updateDisplayName(user.name);
        await firebaseUser.reload();
      }
      _firebaseAuth.signOut();
      return right(null);
    } on FirebaseAuthException catch (e) {
      return left(
        FirebaseAuthFailure.fromFirebaseAuthException(e),
      );
    }
  }
}

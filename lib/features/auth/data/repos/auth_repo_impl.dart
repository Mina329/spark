import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/errors/firebase_auth_failure.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/auth/domain/entities/user_data.dart';
import 'package:spark/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FacebookAuth _facebookAuth = FacebookAuth.instance;
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
  Future<Either<Failure, void>> logInUserWithFacebook() async {
    try {
      final LoginResult loginResult = await _facebookAuth.login();
      if (loginResult.accessToken == null) {
        return left(
          Failure(
            message: StringsManager.noAccountSelected,
          ),
        );
      }
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);
      await _firebaseAuth.signInWithCredential(facebookAuthCredential);
      return right(null);
    } on FirebaseAuthException catch (e) {
      log(e.toString());
      return left(
        FirebaseAuthFailure.fromFirebaseAuthException(e),
      );
    } catch (e) {
      log(e.toString());

      return left(
        Failure(
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> logInUserWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(
          Failure(
            message: StringsManager.noAccountSelected,
          ),
        );
      }
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _firebaseAuth.signInWithCredential(credential);
      return right(null);
    } on FirebaseAuthException catch (e) {
      return left(
        FirebaseAuthFailure.fromFirebaseAuthException(e),
      );
    } catch (e) {
      return left(
        Failure(
          message: e.toString(),
        ),
      );
    }
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

  @override
  Future<Either<Failure, void>> logInAnonymously() async {
    try {
      await _firebaseAuth.signInAnonymously();
      return right(null);
    } on FirebaseAuthException catch (e) {
      return left(
        FirebaseAuthFailure.fromFirebaseAuthException(e),
      );
    }
  }
}

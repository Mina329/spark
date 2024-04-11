import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/lists/domain/entities/show_mini_result_entity.dart';
import 'package:spark/features/profile/data/data_sources/profile_remote_data_source/profile_remote_data_source.dart';
import 'package:spark/features/profile/domain/entities/user_info_entity.dart';

class ProfileRemoteDataSourceImpl extends ProfileRemoteDataSource {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;

  ProfileRemoteDataSourceImpl(
      {required this.firebaseAuth, required this.firebaseFirestore});

  @override
  Future<UserInfoEntity> getUserInfo() async {
    User? currentUser = firebaseAuth.currentUser;
    final String userName =
        currentUser?.displayName == null || currentUser!.displayName!.isEmpty
            ? StringsManager.anonymous
            : currentUser.displayName!;
    final String? userImage = currentUser?.photoURL;
    return UserInfoEntity(name: userName, profileUrl: userImage);
  }

  @override
  Future<List<ShowMiniResultEntity>> getUserFavouriteMovies() async {
    final querySnapshot = await firebaseFirestore
        .collection('users')
        .doc(firebaseAuth.currentUser!.uid)
        .collection('favourite_movies')
        .get();

    final favouriteShows = querySnapshot.docs.map((doc) {
      return ShowMiniResultEntity.fromJson(doc.data());
    }).toList();

    return favouriteShows;
  }

  @override
  Future<List<ShowMiniResultEntity>> getUserFavouriteTvShows() async {
    final querySnapshot = await firebaseFirestore
        .collection('users')
        .doc(firebaseAuth.currentUser!.uid)
        .collection('favourite_tv_shows')
        .get();

    final favouriteShows = querySnapshot.docs.map((doc) {
      return ShowMiniResultEntity.fromJson(doc.data());
    }).toList();

    return favouriteShows;
  }

  @override
  Future<List<PersonMiniResultEntity>> getUserFavouriteCelebrities() async {
    final querySnapshot = await firebaseFirestore
        .collection('users')
        .doc(firebaseAuth.currentUser!.uid)
        .collection('favourite_people')
        .get();

    final favouriteCelebrities = querySnapshot.docs.map((doc) {
      return PersonMiniResultEntity.fromJson(doc.data());
    }).toList();

    return favouriteCelebrities;
  }

  @override
  Future<void> changeUserName(String newName) async {
    await firebaseAuth.currentUser?.updateDisplayName(newName);
  }

  @override
  Future<void> signOut() async {
    if (firebaseAuth.currentUser != null) {
      bool isGoogleUser = firebaseAuth.currentUser!.providerData
          .any((userInfo) => userInfo.providerId == 'google.com');

      bool isFacebookUser = firebaseAuth.currentUser!.providerData
          .any((userInfo) => userInfo.providerId == 'facebook.com');
      bool isAnonymous = firebaseAuth.currentUser!.isAnonymous;

      if (isGoogleUser) {
        final GoogleSignIn googleSignIn = GoogleSignIn();
        await googleSignIn.signOut();
      } else if (isFacebookUser) {
        final FacebookAuth facebookAuth = FacebookAuth.instance;
        await facebookAuth.logOut();
      } else if (isAnonymous) {
        await firebaseAuth.currentUser!.delete();
      }
    }
    await firebaseAuth.signOut();
  }
}

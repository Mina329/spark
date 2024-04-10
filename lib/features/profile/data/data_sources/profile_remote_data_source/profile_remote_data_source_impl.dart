import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spark/core/utils/strings_manager.dart';
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
}

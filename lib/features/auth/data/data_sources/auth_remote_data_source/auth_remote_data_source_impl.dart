import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spark/features/auth/data/data_sources/auth_remote_data_source/auth_remote_data_source.dart';
import 'package:spark/features/auth/data/models/genre_model.dart';

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final FirebaseFirestore firestore;
  final FirebaseAuth firebaseAuth;

  AuthRemoteDataSourceImpl(
      {required this.firestore, required this.firebaseAuth});
  @override
  Future<bool> getUserGenresFlag() async {
    DocumentSnapshot documentSnapshot = await firestore
        .collection('users')
        .doc(firebaseAuth.currentUser!.uid)
        .get();

    Map<String, dynamic>? data =
        documentSnapshot.data() as Map<String, dynamic>?;

    if (data != null && data.containsKey('genresetted')) {
      return data['genresetted'] ?? false;
    } else {
      return false;
    }
  }

  List<GenreModel> parseGenres(QuerySnapshot<Object?> querySnapshot) {
    List<GenreModel> genres = [];
    for (var genre in querySnapshot.docs) {
      genres.add(GenreModel.fromJson(genre.data() as Map<String, dynamic>));
    }
    return genres;
  }

  @override
  Future<void> setUserGenres(List<GenreModel> genres) async {
    for (var genre in genres) {
      await firestore
          .collection('users')
          .doc(firebaseAuth.currentUser!.uid)
          .collection('genres')
          .doc(genre.id)
          .set(genre.toJson());
    }
    await setUserGenresFlag();
  }

  @override
  Future<void> setUserGenresFlag() async {
    await firestore.collection('users').doc(firebaseAuth.currentUser!.uid).set(
      {
        'genresetted': true,
      },
    );
  }
}

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
  Future<List<GenreModel>> getUserGenres() async {
    QuerySnapshot querySnapshot = await firestore
        .collection('users')
        .doc(firebaseAuth.currentUser!.uid)
        .collection('genres')
        .get();

    List<GenreModel> genres = parseGenres(querySnapshot);
    return genres;
  }

  List<GenreModel> parseGenres(QuerySnapshot<Object?> querySnapshot) {
    List<GenreModel> genres = [];
    for (var genre in querySnapshot.docs) {
      genres.add(GenreModel.fromJson(genre.data() as Map<String, dynamic>));
    }
    return genres;
  }
}

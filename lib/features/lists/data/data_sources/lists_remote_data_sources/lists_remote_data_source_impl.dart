import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spark/features/lists/data/data_sources/lists_remote_data_sources/lists_remote_data_source.dart';
import 'package:spark/features/lists/domain/entities/list_entity.dart';

class ListsRemoteDataSourceImpl extends ListsRemoteDataSource {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;

  ListsRemoteDataSourceImpl(
      {required this.firebaseAuth, required this.firebaseFirestore});
  @override
  Future<List<ListEntity>> getUserLists() async {
    List<ListEntity> lists = [];
    QuerySnapshot querySnapshot = await firebaseFirestore
        .collection('users')
        .doc(firebaseAuth.currentUser!.uid)
        .collection('lists')
        .get();
    for (var doc in querySnapshot.docs) {
      ListEntity genre =
          ListEntity.fromJson(doc.data() as Map<String, dynamic>);
      lists.add(genre);
    }
    return lists;
  }

  @override
  Future<void> createNewList(ListEntity list) async {
    await firebaseFirestore
        .collection('users')
        .doc(firebaseAuth.currentUser!.uid)
        .collection('lists')
        .doc(list.id)
        .set(list.toJson());
  }
}

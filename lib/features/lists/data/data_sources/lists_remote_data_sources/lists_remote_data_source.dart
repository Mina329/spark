import 'package:spark/features/lists/domain/entities/list_entity.dart';

abstract class ListsRemoteDataSource {
  Future<List<ListEntity>> getUserLists();
  Future<void> createNewList(ListEntity list);
  Future<void> deleteList(String listId);
}

abstract class IRemoteStorage {
  Future<List<Map<String, dynamic>>> getAll({
    required String collectionPath,
  });

  Future<Map<String, dynamic>> getByID({
    required String id,
    required String collectionPath,
  });
  Future<List<Map<String, dynamic>>> getListByID({
    required String collectionPath,
    required String field,
    required String id,
    required String filter,
  });

  Future<bool> addItem({
    required Map<String, dynamic> map,
    required String collectionPath,
  });
  Future<bool> updateItem({
    required Map<String, dynamic> map,
    required String collectionPath,
  });
  Future<bool> deleteItem({
    required Map<String, dynamic> map,
    required String collectionPath,
  });
}

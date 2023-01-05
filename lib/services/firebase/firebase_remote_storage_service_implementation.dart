import 'package:balaio/services/firebase/remote_storage_service_interface.dart';

class RemoteStorageImpl implements IRemoteStorage {
  final FirebaseFirestore _firestore;

  RemoteStorageImpl(this._firestore);

  @override
  Future<bool> addItem(
      {required Map<String, dynamic> map,
      required String collectionPath}) async {
    await _firestore.collection(collectionPath).add(map);

    return true;
  }

  @override
  Future<bool> deleteItem(
      {required Map<String, dynamic> map,
      required String collectionPath}) async {
    await _firestore.collection(collectionPath).doc(map['id']).delete();

    return true;
  }

  @override
  Future<bool> updateItem(
      {required Map<String, dynamic> map,
      required String collectionPath}) async {
    final id = map['id'];
    map.remove('id');
    await _firestore.collection(collectionPath).doc(id).update(map);

    return true;
  }

  @override
  Future<Map<String, dynamic>> getByID(
      {required String id, required String collectionPath}) async {
    final response = await _firestore.collection(collectionPath).doc(id).get();
    final map = {
      'id': response.reference.id,
      ...?response.data(),
    };

    return map;
  }

  @override
  Future<List<Map<String, dynamic>>> getListByID(
      {required String collectionPath,
      required String field,
      required String id,
      required String filter}) async {
    final response = await _firestore
        .collection(collectionPath)
        .where(field, isEqualTo: id)
        .orderBy(filter)
        .get();

    final lista = response.docs.map((doc) {
      final map = {
        'id': doc.reference.id,
        ...doc.data(),
      };

      return map;
    }).toList();

    return lista;
  }

  @override
  Future<List<Map<String, dynamic>>> getAll(
      {required String collectionPath}) async {
    final response = await _firestore.collection(collectionPath).get();

    final lista = response.docs.map((doc) {
      final map = {
        'id': doc.reference.id,
        ...doc.data(),
      };

      return map;
    }).toList();

    return lista;
  }
}

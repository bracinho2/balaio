abstract class Database {
  Future<T> get<T>(String id);
  List<T> getAll<T>();
  Future<void> delete(String id);
  Future<void> deleteAll(List<String> keys);
  Future<void> addUpdate<T>(String id, T item);
}

class LocalDatabaseServiceImpl implements Database {
  late final Box _box;

  LocalDatabaseServiceImpl() {
    _initalizeBox();
  }

  Future<void> _initalizeBox() async {
    if (!kIsWeb) {
      final appDocumentDirectory = await getApplicationDocumentsDirectory();

      Hive.init(appDocumentDirectory.path);
    }

    if (!Hive.isBoxOpen('documents')) {
      _box = await Hive.openBox('documents');
    }
  }

  @override
  Future<T> get<T>(String id) async {
    try {
      await _initalizeBox();

      final data = _box.get(id);

      return data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  List<T> getAll<T>() {
    try {
      final data = _box.toMap().values;
      if (data.isEmpty) {
        throw Exception();
      }

      return data.toList().cast<T>();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> delete(String id) async {
    try {
      await _box.delete(id);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> addUpdate<T>(String id, T item) async {
    try {
      await _initalizeBox();

      await _box.put(id, item);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> deleteAll(List<String> keys) async {
    try {
      await _box.deleteAll(keys);
    } catch (_) {
      rethrow;
    }
  }
}

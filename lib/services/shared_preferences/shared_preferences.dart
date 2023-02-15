abstract class ILocalStoragePreferences {
  Future<String?> load({required String info});
  void save({required String info, required String data});
  void remove({required String info});
}

class LocalStoragePreferences implements ILocalStoragePreferences {
  @override
  Future<String?> load({required String info}) async {
    final _sharedPreferences = await SharedPreferences.getInstance();

    if (_sharedPreferences.containsKey(info)) {
      final doc = _sharedPreferences.get(info) as String;
      return doc;
    } else {
      return null;
    }
  }

  @override
  void save({required String info, required String data}) async {
    final _sharedPreferences = await SharedPreferences.getInstance();
    _sharedPreferences.setString(info, data);
  }

  @override
  void remove({required String info}) async {
    final _sharedPreferences = await SharedPreferences.getInstance();
    _sharedPreferences.remove(info);
  }
}

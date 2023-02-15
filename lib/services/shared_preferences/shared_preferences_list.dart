import 'package:shared_preferences/shared_preferences.dart';

abstract class ILocalStoragePreferences {
  Future<List<String>?> load({required String infoKey});
  Future<bool> save({required String infoKey, required List<String> dataList});
  Future<bool> remove({required String infoKey});
}

class LocalStoragePreferences implements ILocalStoragePreferences {
  @override
  Future<List<String>?> load({required String infoKey}) async {
    final sharedPreferences = await SharedPreferences.getInstance();

    List<dynamic>? list = sharedPreferences.getStringList(infoKey);
    if (list != null && list is! List<String>) {
      list = list.cast<String>().toList();
      return list.toList();
    } else {
      return null;
    }
  }

  @override
  Future<bool> remove({required String infoKey}) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.remove(infoKey);
  }

  @override
  Future<bool> save(
      {required String infoKey, required List<String> dataList}) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.setStringList(infoKey, dataList);
  }
}

import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:wheather_app/app/shared/repositories/interfaces/local_storage_interface.dart';

class LocalStorageShared implements ILocalStorage {
  Completer<SharedPreferences> _instance = Completer<SharedPreferences>();
  
  init() async {
    _instance.complete(await SharedPreferences.getInstance());
  }
  
  LocalStorageShared(){
    init();
  }

  @override
  Future delete(String key) async{
    var shared = await _instance.future;
    shared.remove(key);
  }

  @override
  Future<List<String>> get(String key) async {
      var shared = await _instance.future;
      return shared.getStringList(key);
    }
  
    @override
    Future put(String key, List<String> value) async{
    var shared = await _instance.future;
    shared.setStringList(key, value);
  }

}
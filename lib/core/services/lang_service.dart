import 'package:shared_preferences/shared_preferences.dart';

abstract class ILangService {
  String getLanguage();
  Future<void> setLanguage(String language);
}

class LangService implements ILangService {
  final SharedPreferences _sharedPreferences;
  static const _key = 'language';

  LangService(this._sharedPreferences);

  @override
  String getLanguage() {
    return _sharedPreferences.getString(_key) ?? 'en';
  }

  @override
  Future<void> setLanguage(String language) async {
    await _sharedPreferences.setString(_key, language);
  }
}
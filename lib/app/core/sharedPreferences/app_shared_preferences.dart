import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppSharedPreferences {
  AppSharedPreferences({required this.secureStorage});
  final FlutterSecureStorage secureStorage;

  Future<void> writeValue({required String key, required String value}) async {
    await secureStorage.write(key: key, value: value);
  }

  Future<String> readValue({required String key}) async {
    return await secureStorage.read(key: key) ?? '';
  }

  Future<void> clearStorage() async {
    log('starting storage cleaning');

    return await secureStorage.deleteAll();
  }
}

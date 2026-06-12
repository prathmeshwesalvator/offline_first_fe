import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:offline_first/app/core/constants/secure_storage_keys.dart';
import 'package:offline_first/app/core/sharedPreferences/app_shared_preferences.dart';
import 'package:offline_first/app/global/router/app_router.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard({required this.appSharedPreferences});
  final AppSharedPreferences appSharedPreferences;
  @override
  FutureOr<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final String accesToken = await appSharedPreferences.readValue(
      key: SecureStorageKeys.accessToken,
    );

    if (accesToken.isEmpty) {
      router.replaceAll([const LoginRoute()]);
    } else {
      resolver.next();
    }
  }
}

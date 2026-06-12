import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:offline_first/app/core/di/injection.config.dart';

final GetIt locator = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  locator.init();
}

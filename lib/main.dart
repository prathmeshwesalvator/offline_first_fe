import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_first/app/core/di/injection.dart';
import 'package:offline_first/app/core/sharedPreferences/app_shared_preferences.dart';
import 'package:offline_first/app/feature/home/domain/usecases/get_all_products_usecase.dart';
import 'package:offline_first/app/feature/home/presentation/bloc/home_page_bloc.dart';
import 'package:offline_first/app/feature/login/domain/usecases/submit_login_usecase.dart';
import 'package:offline_first/app/feature/login/presentation/bloc/login_bloc.dart';
import 'package:offline_first/app/global/bloc/app_bloc.dart';
import 'package:offline_first/app/global/bloc/app_event.dart';
import 'package:offline_first/app/global/router/app_router.dart';
import 'package:offline_first/app/global/theme/app_theme.dart';

final _appRouter = AppRouter();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              AppBloc(appSharedPreferences: locator<AppSharedPreferences>())
                ..add(StartSessionManagerListening())
                ..add(StartNetworkManagerListening()),
        ),
        BlocProvider(
          create: (context) =>
              LoginBloc(submitLoginUsecase: locator<SubmitLoginUsecase>()),
        ),
        BlocProvider(
          create: (_) => HomePageBloc(
            getAllProductsUsecase: locator<GetAllProductsUsecase>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        routerConfig: _appRouter.config(),
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

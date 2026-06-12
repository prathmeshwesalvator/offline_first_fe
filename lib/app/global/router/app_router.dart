import 'package:auto_route/auto_route.dart';
import 'package:offline_first/app/core/di/injection.dart';
import 'package:offline_first/app/core/sharedPreferences/app_shared_preferences.dart';
import 'package:offline_first/app/feature/carts/presentation/carts_page.dart';
import 'package:offline_first/app/feature/common_scaffold.dart';
import 'package:offline_first/app/feature/home/presentation/home_page.dart';
import 'package:offline_first/app/feature/login/presentation/login_page.dart';
import 'package:offline_first/app/feature/posts/presentation/posts_page.dart';
import 'package:offline_first/app/feature/profile/presentation/profile_page.dart';
import 'package:offline_first/app/feature/recipes/presenatation/recipes_page.dart';
import 'package:offline_first/app/global/extensions/duration_extension.dart';
import 'package:offline_first/app/global/guards/auth_guard.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    CustomRoute(
      page: LoginRoute.page,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      duration: 300.milliseconds,
    ),
    CustomRoute(
      page: CommonScaffoldRoute.page,
      guards: [
        AuthGuard(appSharedPreferences: locator<AppSharedPreferences>()),
      ],
      transitionsBuilder: TransitionsBuilders.slideBottom,
      duration: 300.milliseconds,
      initial: true,
      children: [
        CustomRoute(
          page: RecipesRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
          duration: 300.milliseconds,
        ),
        CustomRoute(
          page: PostsRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
          duration: 300.milliseconds,
        ),
        CustomRoute(
          page: HomeRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
          duration: 300.milliseconds,
          initial: true,
        ),
        CustomRoute(
          page: CartsRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
          duration: 300.milliseconds,
        ),
        CustomRoute(
          page: ProfileRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
          duration: 300.milliseconds,
        ),
      ],
    ),
  ];
}

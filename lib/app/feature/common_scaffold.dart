import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_first/app/global/bloc/app_bloc.dart';
import 'package:offline_first/app/global/bloc/app_event.dart';
import 'package:offline_first/app/global/bloc/app_state.dart';
import 'package:offline_first/app/global/enums/blocstatus.dart';
import 'package:offline_first/app/global/enums/sesssion_event_enum.dart';
import 'package:offline_first/app/global/router/app_router.dart';
import 'package:offline_first/app/global/shared_widgets/custom_alert_dialog.dart';
import 'package:offline_first/app/global/shared_widgets/custom_app_bar.dart';
import 'package:offline_first/app/global/shared_widgets/custom_bottom_navbar.dart';
import 'package:offline_first/app/global/shared_widgets/home_fab.dart';
import 'package:offline_first/app/global/shared_widgets/offline_tool_tip.dart';

@RoutePage()
class CommonScaffoldPage extends StatefulWidget {
  const CommonScaffoldPage({super.key});

  @override
  State<CommonScaffoldPage> createState() => _CommonScaffoldPageState();
}

class _CommonScaffoldPageState extends State<CommonScaffoldPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AppBloc>().add(
        ChangeAppBarTitle(
          title: 'Home',
          index: '2',
          subTitle: 'View all products here',
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return BlocConsumer<AppBloc, AppState>(
      listener: (context, state) {
        if (state.sessionManager == SesssionEventEnum.unauthorized) {
          context.router.replaceAll([const LoginRoute()]);
        }

        if (state.logOutStatus == Blocstatus.success) {
          context.router.replaceAll([const LoginRoute()]);
        }
      },
      builder: (context, state) {
        return AutoTabsRouter(
          routes: const [
            RecipesRoute(),
            PostsRoute(),
            HomeRoute(),
            CartsRoute(),
            ProfileRoute(),
          ],
          builder: (context, child) {
            final tabsRouter = AutoTabsRouter.of(context);
            final isHomeSelected = tabsRouter.activeIndex == 2;

            return Scaffold(
              backgroundColor: colorScheme.surface,

              appBar: CustomAppBar(
                actions: [
                  InkWell(
                    onTap: () async {
                      await CustomAlertDialog.showAlertDialog(
                        actions: [
                          TextButton(
                            onPressed: () => context.router.pop(),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () =>
                                context.read<AppBloc>().add(LogOut()),
                            child: Text(
                              'Log Out',
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(
                                    color: Theme.of(context).colorScheme.error,
                                  ),
                            ),
                          ),
                        ],
                        title: Text(
                          'Log Out',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        content: Text(
                          'Are you sure want to Log Out',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        context: context,
                      );
                    },
                    child: Icon(
                      Icons.logout_outlined,
                      color: colorScheme.error,
                    ),
                  ),
                ],
                leading: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(child: Icon(Icons.person_outline)),
                ),
                showDivider: true,
                toolBarHeight: 44,
              ),
              body: Stack(children: [child, const OfflineToolTip()]),

              bottomNavigationBar: const CustomBottomNavbar(),

              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              floatingActionButton: HomeFab(
                isSelected: isHomeSelected,
                colorScheme: colorScheme,
                onPressed: () {
                  tabsRouter.setActiveIndex(2);

                  context.read<AppBloc>().add(
                    ChangeAppBarTitle(
                      title: 'Home',
                      index: '2',
                      subTitle: 'View all Products here',
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}

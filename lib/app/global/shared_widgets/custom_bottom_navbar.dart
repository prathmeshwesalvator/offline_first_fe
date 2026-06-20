import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_first/app/global/app_colors/app_colors.dart';
import 'package:offline_first/app/global/bloc/app_bloc.dart';
import 'package:offline_first/app/global/bloc/app_event.dart';
import 'package:offline_first/app/global/shared_widgets/nav_item.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final tabsRouter = AutoTabsRouter.of(context);

    return BottomAppBar(
      height: MediaQuery.sizeOf(context).height * 0.095,
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      elevation: 6,
      color: AppColors.navBarBackground,
      surfaceTintColor: colorScheme.surfaceTint,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          navItem(
            icon: Icons.restaurant_menu_outlined,
            activeIcon: Icons.restaurant_menu,
            label: 'Recipes',
            isSelected: tabsRouter.activeIndex == 0,
            onTap: () {
              tabsRouter.setActiveIndex(0);

              context.read<AppBloc>().add(
                ChangeAppBarTitle(
                  title: 'Recipes',
                  index: '0',
                  subTitle: 'View all recipes here',
                ),
              );
            },
            context: context,
          ),

          navItem(
            icon: Icons.article_outlined,
            activeIcon: Icons.article,
            label: 'Posts',
            isSelected: tabsRouter.activeIndex == 1,
            onTap: () {
              tabsRouter.setActiveIndex(1);

              context.read<AppBloc>().add(
                ChangeAppBarTitle(
                  title: 'Posts',
                  index: '1',
                  subTitle: 'View all posts here',
                ),
              );
            },
            context: context,
          ),

          const SizedBox(width: 56),

          navItem(
            icon: Icons.shopping_cart_outlined,
            activeIcon: Icons.shopping_cart,
            label: 'Cart',
            isSelected: tabsRouter.activeIndex == 3,
            onTap: () {
              tabsRouter.setActiveIndex(3);

              context.read<AppBloc>().add(
                ChangeAppBarTitle(
                  title: 'Cart',
                  index: '3',
                  subTitle: 'View all cart items here',
                ),
              );
            },
            context: context,
          ),

          navItem(
            icon: Icons.person_outline,
            activeIcon: Icons.person,
            label: 'Profile',
            isSelected: tabsRouter.activeIndex == 4,
            onTap: () {
              tabsRouter.setActiveIndex(4);

              context.read<AppBloc>().add(
                ChangeAppBarTitle(
                  title: 'Profile',
                  index: '4',
                  subTitle: 'View your profile here',
                ),
              );
            },
            context: context,
          ),
        ],
      ),
    );
  }
}

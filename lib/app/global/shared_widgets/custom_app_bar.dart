import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_first/app/global/bloc/app_bloc.dart';
import 'package:offline_first/app/global/bloc/app_state.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.actions,
    this.leading,
    this.centerTitle = false,
    this.showDivider = false,
    required this.toolBarHeight,
  });

  final List<Widget>? actions;
  final Widget? leading;
  final bool centerTitle;
  final bool showDivider;
  final double toolBarHeight;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return BlocBuilder<AppBloc, AppState>(
      buildWhen: (previous, current) =>
          previous.appBarTitle != current.appBarTitle ||
          previous.appBarSubTitle != current.appBarSubTitle,
      builder: (context, state) {
        return AppBar(
          actionsPadding: const EdgeInsets.all(16),
          automaticallyImplyLeading: leading == null,
          leading: leading,
          actions: actions,
          centerTitle: centerTitle,

          backgroundColor: colorScheme.surface,
          surfaceTintColor: colorScheme.surfaceTint,

          elevation: 0,
          scrolledUnderElevation: 2,

          toolbarHeight: state.appBarSubTitle.isNotEmpty ? 72 : toolBarHeight,

          titleSpacing: 16,

          title: AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            switchInCurve: Curves.easeOut,
            switchOutCurve: Curves.easeIn,
            child: Column(
              key: ValueKey('${state.appBarTitle}_${state.appBarSubTitle}'),
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  state.appBarTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: colorScheme.onSurface,
                    letterSpacing: 0.2,
                  ),
                ),

                if (state.appBarSubTitle.isNotEmpty) ...[
                  const SizedBox(height: 2),

                  Text(
                    state.appBarSubTitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.labelMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ],
            ),
          ),

          bottom: showDivider
              ? PreferredSize(
                  preferredSize: const Size.fromHeight(1),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: colorScheme.outlineVariant.withOpacity(0.4),
                  ),
                )
              : null,
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(72);
}

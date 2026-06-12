import 'package:flutter/material.dart';

Widget navItem({
  required BuildContext context,
  required IconData icon,
  IconData? activeIcon,
  required String label,
  required bool isSelected,
  required VoidCallback onTap,
}) {
  final colorScheme = Theme.of(context).colorScheme;
  final textTheme = Theme.of(context).textTheme;

  final activeColor = colorScheme.surfaceBright;
  final inactiveColor = colorScheme.onSurfaceVariant;

  return Material(
    color: Colors.transparent,
    child: InkResponse(
      onTap: onTap,
      radius: 28,
      splashColor: colorScheme.primary.withOpacity(0.15),
      highlightColor: colorScheme.primary.withOpacity(0.08),
      customBorder: const CircleBorder(),
      child: SizedBox(
        width: 60,
        height: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isSelected ? (activeIcon ?? icon) : icon,
              color: isSelected ? activeColor : inactiveColor,
            ),

            const SizedBox(height: 4),

            Text(
              label,
              style: textTheme.labelSmall?.copyWith(
                color: isSelected ? activeColor : inactiveColor,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

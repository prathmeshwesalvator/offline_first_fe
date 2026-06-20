import 'package:flutter/material.dart';
import 'package:offline_first/app/global/app_colors/app_colors.dart';

Widget navItem({
  required BuildContext context,
  required IconData icon,
  IconData? activeIcon,
  required String label,
  required bool isSelected,
  required VoidCallback onTap,
}) {
  return Material(
    color: Colors.transparent,
    child: InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: isSelected
              ? AppColors.navSelected.withOpacity(.12)
              : Colors.transparent,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              isSelected ? (activeIcon ?? icon) : icon,
              color: isSelected
                  ? AppColors.navSelected
                  : AppColors.navUnselected,
            ),

            const SizedBox(height: 4),

            Text(
              label,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                color: isSelected
                    ? AppColors.navSelected
                    : AppColors.navUnselected,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';

class HomeFab extends StatelessWidget {
  const HomeFab({super.key, 
    required this.isSelected,
    required this.colorScheme,
    required this.onPressed,
  });

  final bool isSelected;
  final ColorScheme colorScheme;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeInOut,
      height: 64,
      width: 64,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? colorScheme.primary : colorScheme.surface,
        border: Border.all(color: colorScheme.primary, width: 2),
        boxShadow: [
          BoxShadow(
            color: colorScheme.primary.withOpacity(isSelected ? 0.35 : 0.15),
            blurRadius: 12,
            spreadRadius: 1,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: FloatingActionButton(
        elevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        highlightElevation: 0,
        backgroundColor: Colors.transparent,
        shape: const CircleBorder(),
        onPressed: onPressed,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: Icon(
            isSelected ? Icons.home_rounded : Icons.home_outlined,
            key: ValueKey(isSelected),
            size: 30,
            color: isSelected ? colorScheme.onPrimary : colorScheme.primary,
          ),
        ),
      ),
    );
  }
}

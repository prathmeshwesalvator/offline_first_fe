import 'package:flutter/material.dart';

class CustomAlertDialog {
  CustomAlertDialog._();

  static Future<T?> showAlertDialog<T>({
    required BuildContext context,

    // Content
    Widget? title,
    Widget? content,
    List<Widget>? actions,

    // Appearance
    Color? backgroundColor,
    Color? surfaceTintColor,
    Color? shadowColor,
    double? elevation,
    ShapeBorder? shape,
    EdgeInsets? insetPadding,
    EdgeInsetsGeometry? contentPadding,
    EdgeInsetsGeometry? titlePadding,
    EdgeInsetsGeometry? actionsPadding,

    // Behavior
    bool barrierDismissible = true,
    AlignmentGeometry? alignment,

    // Scroll
    bool scrollable = false,

    // Constraints
    BoxConstraints? constraints,
  }) async {
    final theme = Theme.of(context);
    final dialogTheme = theme.dialogTheme;

    return showDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (dialogContext) {
        return AlertDialog(
          title: title,
          content: content,
          actions: actions,

          // Theme-aware styling
          backgroundColor:
              backgroundColor ??
              dialogTheme.backgroundColor ??
              theme.colorScheme.surface,

          surfaceTintColor:
              surfaceTintColor ?? theme.colorScheme.surfaceTint,

          shadowColor: shadowColor,
          elevation: elevation ?? dialogTheme.elevation ?? 6,

          shape:
              shape ??
              dialogTheme.shape ??
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),

          titlePadding:
              titlePadding ??
              const EdgeInsets.fromLTRB(24, 24, 24, 8),

          contentPadding:
              contentPadding ??
              const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 12,
              ),

          actionsPadding:
              actionsPadding ??
              const EdgeInsets.fromLTRB(16, 0, 16, 16),

          insetPadding:
              insetPadding ??
              const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 24,
              ),

          alignment: alignment,
          scrollable: scrollable,
          constraints: constraints,
        );
      },
    );
  }
}
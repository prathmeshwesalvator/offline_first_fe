import 'package:flutter/material.dart';

// ─────────────────────────────────────────────
//  COLOUR PALETTE
// ─────────────────────────────────────────────
class AppColors {
  AppColors._();

  // Brand
  static const Color primary = Color(0xFF6750A4);
  static const Color primaryLight = Color(0xFFEADDFF);
  static const Color secondary = Color(0xFF625B71);
  static const Color tertiary = Color(0xFF7D5260);
  static const Color error = Color(0xFFB3261E);

  // Neutral surface scale
  static const Color surface = Color(0xFFFFFBFE);
  static const Color surfaceVariant = Color(0xFFE7E0EC);
  static const Color outline = Color(0xFF79747E);
  static const Color outlineVariant = Color(0xFFCAC4D0);
  static const Color shadow = Color(0xFF000000);
  static const Color scrim = Color(0xFF000000);
  static const Color inverseSurface = Color(0xFF313033);

  // On-colours (text / icons on top of their background)
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onPrimaryContainer = Color(0xFF21005D);
  static const Color onSecondary = Color(0xFFFFFFFF);
  static const Color onTertiary = Color(0xFFFFFFFF);
  static const Color onError = Color(0xFFFFFFFF);
  static const Color onSurface = Color(0xFF1C1B1F);
  static const Color onSurfaceVariant = Color(0xFF49454F);
  static const Color onInverseSurface = Color(0xFFF4EFF4);

  // ── Dark-mode counterparts ──
  static const Color primaryDark = Color(0xFFD0BCFF);
  static const Color primaryContainerDark = Color(0xFF4F378B);
  static const Color secondaryDark = Color(0xFFCCC2DC);
  static const Color tertiaryDark = Color(0xFFEFB8C8);
  static const Color errorDark = Color(0xFFF2B8B5);
  static const Color surfaceDark = Color(0xFF1C1B1F);
  static const Color surfaceVariantDark = Color(0xFF49454F);
  static const Color outlineDark = Color(0xFF938F99);
  static const Color onPrimaryDark = Color(0xFF381E72);
  static const Color onSecondaryDark = Color(0xFF332D41);
  static const Color onTertiaryDark = Color(0xFF492532);
  static const Color onErrorDark = Color(0xFF601410);
  static const Color onSurfaceDark = Color(0xFFE6E1E5);
  static const Color onSurfaceVariantDark = Color(0xFFCAC4D0);
  static const Color inverseSurfaceDark = Color(0xFFE6E1E5);
  static const Color onInverseSurfaceDark = Color(0xFF313033);
}

// ─────────────────────────────────────────────
//  TYPOGRAPHY
// ─────────────────────────────────────────────
class AppTextStyles {
  AppTextStyles._();

  // Use your own font family here; make sure to declare it in pubspec.yaml.
  // Fallback to system sans-serif if not loaded.
  static const String _fontFamily = 'Poppins';

  static const TextTheme textTheme = TextTheme(
    // Display
    displayLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 57,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.25,
    ),
    displayMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 45,
      fontWeight: FontWeight.w400,
    ),
    displaySmall: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 36,
      fontWeight: FontWeight.w400,
    ),

    // Headline
    headlineLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 32,
      fontWeight: FontWeight.w600,
    ),
    headlineMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),

    // Title
    titleLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 22,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    titleSmall: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),

    // Body
    bodyLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    bodyMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    bodySmall: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),

    // Label
    labelLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    labelMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
    labelSmall: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 11,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
  );
}

// ─────────────────────────────────────────────
//  SHAPE
// ─────────────────────────────────────────────
class AppShapes {
  AppShapes._();

  static const ShapeBorder extraSmall = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
  );
  static const ShapeBorder small = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );
  static const ShapeBorder medium = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );
  static const ShapeBorder large = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
  );
  static const ShapeBorder extraLarge = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(28)),
  );
  static const ShapeBorder full = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
  );
}

// ─────────────────────────────────────────────
//  SPACING CONSTANTS  (use as padding / gap)
// ─────────────────────────────────────────────
class AppSpacing {
  AppSpacing._();

  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
  static const double xxl = 48;
  static const double xxxl = 64;
}

// ─────────────────────────────────────────────
//  THEME  (light + dark)
// ─────────────────────────────────────────────
class AppTheme {
  AppTheme._();

  // ── Seed-based ColorScheme (Material 3) ────
  static final ColorScheme _lightColorScheme =
      ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.light,
      ).copyWith(
        primary: AppColors.primary,
        onPrimary: AppColors.onPrimary,
        primaryContainer: AppColors.primaryLight,
        onPrimaryContainer: AppColors.onPrimaryContainer,
        secondary: AppColors.secondary,
        onSecondary: AppColors.onSecondary,
        tertiary: AppColors.tertiary,
        onTertiary: AppColors.onTertiary,
        error: AppColors.error,
        onError: AppColors.onError,
        surface: AppColors.surface,
        onSurface: AppColors.onSurface,
        surfaceContainerHighest: AppColors.surfaceVariant,
        onSurfaceVariant: AppColors.onSurfaceVariant,
        outline: AppColors.outline,
        outlineVariant: AppColors.outlineVariant,
        shadow: AppColors.shadow,
        scrim: AppColors.scrim,
        inverseSurface: AppColors.inverseSurface,
        onInverseSurface: AppColors.onInverseSurface,
      );

  static final ColorScheme _darkColorScheme =
      ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.dark,
      ).copyWith(
        primary: AppColors.primaryDark,
        onPrimary: AppColors.onPrimaryDark,
        primaryContainer: AppColors.primaryContainerDark,
        onPrimaryContainer: AppColors.primaryLight,
        secondary: AppColors.secondaryDark,
        onSecondary: AppColors.onSecondaryDark,
        tertiary: AppColors.tertiaryDark,
        onTertiary: AppColors.onTertiaryDark,
        error: AppColors.errorDark,
        onError: AppColors.onErrorDark,
        surface: AppColors.surfaceDark,
        onSurface: AppColors.onSurfaceDark,
        surfaceContainerHighest: AppColors.surfaceVariantDark,
        onSurfaceVariant: AppColors.onSurfaceVariantDark,
        outline: AppColors.outlineDark,
        inverseSurface: AppColors.inverseSurfaceDark,
        onInverseSurface: AppColors.onInverseSurfaceDark,
      );

  // ── LIGHT THEME ────────────────────────────
  static ThemeData get light => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: _lightColorScheme,
    textTheme: AppTextStyles.textTheme,

    // AppBar
    appBarTheme: AppBarTheme(
      backgroundColor: _lightColorScheme.surface,
      foregroundColor: _lightColorScheme.onSurface,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: AppTextStyles.textTheme.titleLarge?.copyWith(
        color: _lightColorScheme.onSurface,
      ),
      iconTheme: IconThemeData(color: _lightColorScheme.onSurface),
    ),

    // Scaffold
    scaffoldBackgroundColor: _lightColorScheme.surface,

    // Card
    cardTheme: CardThemeData(
      color: _lightColorScheme.surface,
      shadowColor: AppColors.shadow.withOpacity(0.08),
      elevation: 2,
      shape: AppShapes.medium as OutlinedBorder,
      margin: const EdgeInsets.all(AppSpacing.sm),
    ),

    // ElevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _lightColorScheme.primary,
        foregroundColor: _lightColorScheme.onPrimary,
        minimumSize: const Size(64, 48),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.sm,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        elevation: 2,
        textStyle: AppTextStyles.textTheme.labelLarge,
      ),
    ),

    // OutlinedButton
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: _lightColorScheme.primary,
        minimumSize: const Size(64, 48),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.sm,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        side: BorderSide(color: _lightColorScheme.primary, width: 1.5),
        textStyle: AppTextStyles.textTheme.labelLarge,
      ),
    ),

    // TextButton
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: _lightColorScheme.primary,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.sm,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        textStyle: AppTextStyles.textTheme.labelLarge,
      ),
    ),

    // FilledButton
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: _lightColorScheme.primary,
        foregroundColor: _lightColorScheme.onPrimary,
        minimumSize: const Size(64, 48),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.sm,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    ),

    // FloatingActionButton
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _lightColorScheme.primaryContainer,
      foregroundColor: _lightColorScheme.onPrimaryContainer,
      elevation: 3,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    ),

    // InputDecoration (TextField, TextFormField)
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: _lightColorScheme.surfaceContainerHighest.withOpacity(0.4),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.md,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: _lightColorScheme.outline),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: _lightColorScheme.outline.withOpacity(0.5),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: _lightColorScheme.primary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: _lightColorScheme.error),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: _lightColorScheme.error, width: 2),
      ),
      labelStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
        color: _lightColorScheme.onSurfaceVariant,
      ),
      hintStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
        color: _lightColorScheme.onSurfaceVariant.withOpacity(0.6),
      ),
      errorStyle: AppTextStyles.textTheme.bodySmall?.copyWith(
        color: _lightColorScheme.error,
      ),
    ),

    // Chip
    chipTheme: ChipThemeData(
      backgroundColor: _lightColorScheme.surfaceContainerHighest,
      selectedColor: _lightColorScheme.primaryContainer,
      labelStyle: AppTextStyles.textTheme.labelMedium,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xs,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ),

    // BottomNavigationBar
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: _lightColorScheme.surface,
      selectedItemColor: _lightColorScheme.primary,
      unselectedItemColor: _lightColorScheme.onSurfaceVariant,
      selectedLabelStyle: AppTextStyles.textTheme.labelSmall,
      unselectedLabelStyle: AppTextStyles.textTheme.labelSmall,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
    ),

    // NavigationBar (Material 3)
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: _lightColorScheme.surface,
      indicatorColor: _lightColorScheme.primaryContainer,
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return IconThemeData(color: _lightColorScheme.onPrimaryContainer);
        }
        return IconThemeData(color: _lightColorScheme.onSurfaceVariant);
      }),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppTextStyles.textTheme.labelMedium?.copyWith(
            color: _lightColorScheme.onSurface,
          );
        }
        return AppTextStyles.textTheme.labelMedium?.copyWith(
          color: _lightColorScheme.onSurfaceVariant,
        );
      }),
      elevation: 3,
    ),

    // Dialog
    dialogTheme: DialogThemeData(
      backgroundColor: _lightColorScheme.surface,
      elevation: 6,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(28)),
      ),
      titleTextStyle: AppTextStyles.textTheme.headlineSmall?.copyWith(
        color: _lightColorScheme.onSurface,
      ),
      contentTextStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
        color: _lightColorScheme.onSurfaceVariant,
      ),
    ),

    // SnackBar
    snackBarTheme: SnackBarThemeData(
      backgroundColor: _lightColorScheme.inverseSurface,
      contentTextStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
        color: _lightColorScheme.onInverseSurface,
      ),
      actionTextColor: _lightColorScheme.primaryContainer,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      behavior: SnackBarBehavior.floating,
    ),

    // Divider
    dividerTheme: DividerThemeData(
      color: _lightColorScheme.outlineVariant,
      thickness: 1,
      space: 1,
    ),

    // ListTile
    listTileTheme: ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      iconColor: _lightColorScheme.onSurfaceVariant,
      titleTextStyle: AppTextStyles.textTheme.bodyLarge?.copyWith(
        color: _lightColorScheme.onSurface,
      ),
      subtitleTextStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
        color: _lightColorScheme.onSurfaceVariant,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ),

    // Switch
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return _lightColorScheme.primary;
        }
        return _lightColorScheme.outline;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return _lightColorScheme.primaryContainer;
        }
        return _lightColorScheme.surfaceContainerHighest;
      }),
    ),

    // Checkbox
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return _lightColorScheme.primary;
        }
        return Colors.transparent;
      }),
      checkColor: WidgetStateProperty.all(_lightColorScheme.onPrimary),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      side: BorderSide(color: _lightColorScheme.outline, width: 1.5),
    ),

    // Radio
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return _lightColorScheme.primary;
        }
        return _lightColorScheme.outline;
      }),
    ),

    // Slider
    sliderTheme: SliderThemeData(
      activeTrackColor: _lightColorScheme.primary,
      inactiveTrackColor: _lightColorScheme.primaryContainer,
      thumbColor: _lightColorScheme.primary,
      overlayColor: _lightColorScheme.primary.withOpacity(0.12),
      valueIndicatorColor: _lightColorScheme.primary,
      valueIndicatorTextStyle: AppTextStyles.textTheme.labelMedium?.copyWith(
        color: _lightColorScheme.onPrimary,
      ),
    ),

    // ProgressIndicator
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: _lightColorScheme.primary,
      linearTrackColor: _lightColorScheme.primaryContainer,
      circularTrackColor: _lightColorScheme.primaryContainer,
    ),

    // Tooltip
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: _lightColorScheme.inverseSurface,
        borderRadius: BorderRadius.circular(8),
      ),
      textStyle: AppTextStyles.textTheme.bodySmall?.copyWith(
        color: _lightColorScheme.onInverseSurface,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xs,
      ),
    ),

    // TabBar
    tabBarTheme: TabBarThemeData(
      labelColor: _lightColorScheme.primary,
      unselectedLabelColor: _lightColorScheme.onSurfaceVariant,
      indicatorColor: _lightColorScheme.primary,
      labelStyle: AppTextStyles.textTheme.titleSmall,
      unselectedLabelStyle: AppTextStyles.textTheme.titleSmall,
    ),

    // BottomSheet
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: _lightColorScheme.surface,
      modalBackgroundColor: _lightColorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      elevation: 4,
    ),

    // PopupMenu
    popupMenuTheme: PopupMenuThemeData(
      color: _lightColorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      elevation: 3,
      textStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
        color: _lightColorScheme.onSurface,
      ),
    ),

    // DatePicker
    datePickerTheme: DatePickerThemeData(
      backgroundColor: _lightColorScheme.surface,
      headerBackgroundColor: _lightColorScheme.primaryContainer,
      headerForegroundColor: _lightColorScheme.onPrimaryContainer,
      dayStyle: AppTextStyles.textTheme.bodySmall,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(28)),
      ),
    ),

    // Icon
    iconTheme: IconThemeData(color: _lightColorScheme.onSurface, size: 24),
    primaryIconTheme: IconThemeData(
      color: _lightColorScheme.onPrimary,
      size: 24,
    ),

    // Misc
    visualDensity: VisualDensity.adaptivePlatformDensity,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    splashFactory: InkSparkle.splashFactory,
  );

  // ── DARK THEME ─────────────────────────────
  static ThemeData get dark => light.copyWith(
    brightness: Brightness.dark,
    colorScheme: _darkColorScheme,
    scaffoldBackgroundColor: _darkColorScheme.surface,

    appBarTheme: AppBarTheme(
      backgroundColor: _darkColorScheme.surface,
      foregroundColor: _darkColorScheme.onSurface,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: AppTextStyles.textTheme.titleLarge?.copyWith(
        color: _darkColorScheme.onSurface,
      ),
      iconTheme: IconThemeData(color: _darkColorScheme.onSurface),
    ),

    cardTheme: CardThemeData(
      color: _darkColorScheme.surfaceContainerHighest,
      shadowColor: Colors.black.withOpacity(0.3),
      elevation: 2,
      shape: AppShapes.medium as OutlinedBorder,
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: _darkColorScheme.surfaceContainerHighest.withOpacity(0.4),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.md,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: _darkColorScheme.outline),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: _darkColorScheme.outline.withOpacity(0.5),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: _darkColorScheme.primary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: _darkColorScheme.error),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: _darkColorScheme.error, width: 2),
      ),
      labelStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
        color: _darkColorScheme.onSurfaceVariant,
      ),
      hintStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
        color: _darkColorScheme.onSurfaceVariant.withOpacity(0.5),
      ),
      errorStyle: AppTextStyles.textTheme.bodySmall?.copyWith(
        color: _darkColorScheme.error,
      ),
    ),

    dividerTheme: DividerThemeData(
      color: _darkColorScheme.outlineVariant,
      thickness: 1,
      space: 1,
    ),

    iconTheme: IconThemeData(color: _darkColorScheme.onSurface, size: 24),
    primaryIconTheme: IconThemeData(
      color: _darkColorScheme.onPrimary,
      size: 24,
    ),
  );
}

// ─────────────────────────────────────────────
//  EXTENSIONS  —  Theme.of(context).appColors
// ─────────────────────────────────────────────

/// Quick-access extension so you can write:
///   context.colors.primary
///   context.textTheme.bodyLarge
extension ThemeContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colors => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
  bool get isDark => Theme.of(this).brightness == Brightness.dark;
}

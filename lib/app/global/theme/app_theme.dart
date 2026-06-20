// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ═══════════════════════════════════════════════════════════════════════════════
//  APP COLORS
//  Complete semantic palette — light & dark variants
// ═══════════════════════════════════════════════════════════════════════════════

class AppColors {
  AppColors._();

  // ── Brand ──────────────────────────────────────────────────────────────────
  // Primary: Deep Indigo — authority, trust, premium
  static const Color primary = Color(0xFF3D52A0);
  static const Color primaryContainer = Color(0xFFDDE3FF);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onPrimaryContainer = Color(0xFF00105E);

  // Secondary: Slate Blue — sophistication, complementary depth
  static const Color secondary = Color(0xFF7B89C4);
  static const Color secondaryContainer = Color(0xFFDEE0FF);
  static const Color onSecondary = Color(0xFFFFFFFF);
  static const Color onSecondaryContainer = Color(0xFF141E60);

  // Tertiary: Warm Violet — accent, creative energy
  static const Color tertiary = Color(0xFF7965AF);
  static const Color tertiaryContainer = Color(0xFFEADDFF);
  static const Color onTertiary = Color(0xFFFFFFFF);
  static const Color onTertiaryContainer = Color(0xFF2D0065);

  // ── Semantic ───────────────────────────────────────────────────────────────
  static const Color success = Color(0xFF1B7F4A);
  static const Color successContainer = Color(0xFFB8F0D0);
  static const Color onSuccess = Color(0xFFFFFFFF);
  static const Color onSuccessContainer = Color(0xFF002113);

  static const Color warning = Color(0xFF895D00);
  static const Color warningContainer = Color(0xFFFFDEA0);
  static const Color onWarning = Color(0xFFFFFFFF);
  static const Color onWarningContainer = Color(0xFF2B1A00);

  static const Color error = Color(0xFFBA1A1A);
  static const Color errorContainer = Color(0xFFFFDAD6);
  static const Color onError = Color(0xFFFFFFFF);
  static const Color onErrorContainer = Color(0xFF410002);

  static const Color info = Color(0xFF005FAF);
  static const Color infoContainer = Color(0xFFD3E4FF);
  static const Color onInfo = Color(0xFFFFFFFF);
  static const Color onInfoContainer = Color(0xFF001C3A);

  // ── Surface Scale ──────────────────────────────────────────────────────────
  static const Color surface = Color(0xFFFAF9FF);
  static const Color surfaceDim = Color(0xFFDAD9E7);
  static const Color surfaceBright = Color(0xFFFAF9FF);
  static const Color surfaceContainerLowest = Color(0xFFFFFFFF);
  static const Color surfaceContainerLow = Color(0xFFF4F3FB);
  static const Color surfaceContainer = Color(0xFFEEEEF5);
  static const Color surfaceContainerHigh = Color(0xFFE8E8F0);
  static const Color surfaceContainerHighest = Color(0xFFE3E2EA);
  static const Color onSurface = Color(0xFF1B1B22);
  static const Color onSurfaceVariant = Color(0xFF46464F);

  static const Color outline = Color(0xFF777680);
  static const Color outlineVariant = Color(0xFFC7C5D0);
  static const Color shadow = Color(0xFF000000);
  static const Color scrim = Color(0xFF000000);
  static const Color inverseSurface = Color(0xFF303037);
  static const Color onInverseSurface = Color(0xFFF2F0F8);
  static const Color inversePrimary = Color(0xFFB8C3FF);

  // ── Dark Variants ──────────────────────────────────────────────────────────
  static const Color primaryDark = Color(0xFFB8C3FF);
  static const Color primaryContainerDark = Color(0xFF243686);
  static const Color onPrimaryDark = Color(0xFF002170);
  static const Color onPrimaryContainerDark = Color(0xFFDDE3FF);

  static const Color secondaryDark = Color(0xFFBEC4FF);
  static const Color secondaryContainerDark = Color(0xFF616EA8);
  static const Color onSecondaryDark = Color(0xFF263277);
  static const Color onSecondaryContainerDark = Color(0xFFDEE0FF);

  static const Color tertiaryDark = Color(0xFFD0BCFF);
  static const Color tertiaryContainerDark = Color(0xFF604E95);
  static const Color onTertiaryDark = Color(0xFF44197A);
  static const Color onTertiaryContainerDark = Color(0xFFEADDFF);

  static const Color successDark = Color(0xFF5CD4A0);
  static const Color successContainerDark = Color(0xFF00643A);
  static const Color onSuccessDark = Color(0xFF003822);
  static const Color onSuccessContainerDark = Color(0xFFB8F0D0);

  static const Color warningDark = Color(0xFFFFBC36);
  static const Color warningContainerDark = Color(0xFF684600);
  static const Color onWarningDark = Color(0xFF472E00);
  static const Color onWarningContainerDark = Color(0xFFFFDEA0);

  static const Color errorDark = Color(0xFFFFB4AB);
  static const Color errorContainerDark = Color(0xFF93000A);
  static const Color onErrorDark = Color(0xFF690005);
  static const Color onErrorContainerDark = Color(0xFFFFDAD6);

  static const Color infoDark = Color(0xFFA4C8FF);
  static const Color infoContainerDark = Color(0xFF004787);
  static const Color onInfoDark = Color(0xFF003060);
  static const Color onInfoContainerDark = Color(0xFFD3E4FF);

  static const Color surfaceDark = Color(0xFF131318);
  static const Color surfaceDimDark = Color(0xFF131318);
  static const Color surfaceBrightDark = Color(0xFF39383F);
  static const Color surfaceContainerLowestDark = Color(0xFF0E0E13);
  static const Color surfaceContainerLowDark = Color(0xFF1B1B21);
  static const Color surfaceContainerDark = Color(0xFF1F1F25);
  static const Color surfaceContainerHighDark = Color(0xFF2A292F);
  static const Color surfaceContainerHighestDark = Color(0xFF34333A);
  static const Color onSurfaceDark = Color(0xFFE4E2EB);
  static const Color onSurfaceVariantDark = Color(0xFFC7C5D0);

  static const Color outlineDark = Color(0xFF91909A);
  static const Color outlineVariantDark = Color(0xFF46464F);
  static const Color inverseSurfaceDark = Color(0xFFE4E2EB);
  static const Color onInverseSurfaceDark = Color(0xFF303037);
  static const Color inversePrimaryDark = Color(0xFF3D52A0);
}

// ═══════════════════════════════════════════════════════════════════════════════
//  APP TEXT STYLES
//  Poppins — full Material 3 TextTheme with refined hierarchy
// ═══════════════════════════════════════════════════════════════════════════════

class AppTextStyles {
  AppTextStyles._();

  static const String _font = 'Poppins';

  static const TextTheme textTheme = TextTheme(
    // ── Display ──────────────────────────────
    displayLarge: TextStyle(
      fontFamily: _font,
      fontSize: 57,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.25,
      height: 1.12,
    ),
    displayMedium: TextStyle(
      fontFamily: _font,
      fontSize: 45,
      fontWeight: FontWeight.w300,
      letterSpacing: 0,
      height: 1.16,
    ),
    displaySmall: TextStyle(
      fontFamily: _font,
      fontSize: 36,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.22,
    ),

    // ── Headline ──────────────────────────────
    headlineLarge: TextStyle(
      fontFamily: _font,
      fontSize: 32,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.5,
      height: 1.25,
    ),
    headlineMedium: TextStyle(
      fontFamily: _font,
      fontSize: 28,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.25,
      height: 1.29,
    ),
    headlineSmall: TextStyle(
      fontFamily: _font,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: 1.33,
    ),

    // ── Title ─────────────────────────────────
    titleLarge: TextStyle(
      fontFamily: _font,
      fontSize: 22,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: 1.27,
    ),
    titleMedium: TextStyle(
      fontFamily: _font,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      height: 1.50,
    ),
    titleSmall: TextStyle(
      fontFamily: _font,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.43,
    ),

    // ── Body ──────────────────────────────────
    bodyLarge: TextStyle(
      fontFamily: _font,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      height: 1.50,
    ),
    bodyMedium: TextStyle(
      fontFamily: _font,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      height: 1.43,
    ),
    bodySmall: TextStyle(
      fontFamily: _font,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      height: 1.33,
    ),

    // ── Label ─────────────────────────────────
    labelLarge: TextStyle(
      fontFamily: _font,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.1,
      height: 1.43,
    ),
    labelMedium: TextStyle(
      fontFamily: _font,
      fontSize: 12,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
      height: 1.33,
    ),
    labelSmall: TextStyle(
      fontFamily: _font,
      fontSize: 11,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
      height: 1.45,
    ),
  );
}

// ═══════════════════════════════════════════════════════════════════════════════
//  APP SHAPES
//  Consistent border-radius tokens across the design system
// ═══════════════════════════════════════════════════════════════════════════════

class AppShapes {
  AppShapes._();

  static const BorderRadius none = BorderRadius.zero;

  static const BorderRadius extraSmall = BorderRadius.all(Radius.circular(4));
  static const BorderRadius small = BorderRadius.all(Radius.circular(8));
  static const BorderRadius medium = BorderRadius.all(Radius.circular(12));
  static const BorderRadius large = BorderRadius.all(Radius.circular(16));
  static const BorderRadius extraLarge = BorderRadius.all(Radius.circular(24));
  static const BorderRadius extraExtraLarge = BorderRadius.all(
    Radius.circular(32),
  );
  static const BorderRadius full = BorderRadius.all(Radius.circular(100));

  static const BorderRadius topLarge = BorderRadius.vertical(
    top: Radius.circular(28),
  );
  static const BorderRadius topExtraLarge = BorderRadius.vertical(
    top: Radius.circular(36),
  );

  // OutlinedBorder wrappers for ThemeData components
  static RoundedRectangleBorder get noneShape => const RoundedRectangleBorder();
  static RoundedRectangleBorder get extraSmallShape =>
      const RoundedRectangleBorder(borderRadius: extraSmall);
  static RoundedRectangleBorder get smallShape =>
      const RoundedRectangleBorder(borderRadius: small);
  static RoundedRectangleBorder get mediumShape =>
      const RoundedRectangleBorder(borderRadius: medium);
  static RoundedRectangleBorder get largeShape =>
      const RoundedRectangleBorder(borderRadius: large);
  static RoundedRectangleBorder get extraLargeShape =>
      const RoundedRectangleBorder(borderRadius: extraLarge);
  static RoundedRectangleBorder get fullShape =>
      const RoundedRectangleBorder(borderRadius: full);
}

// ═══════════════════════════════════════════════════════════════════════════════
//  APP SPACING
//  4-pt base grid — consistent layout spacing tokens
// ═══════════════════════════════════════════════════════════════════════════════

class AppSpacing {
  AppSpacing._();

  static const double xxs = 2;
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
  static const double xxl = 48;
  static const double xxxl = 64;
  static const double xxxxl = 96;

  // Semantic aliases
  static const double pagePadding = md;
  static const double cardPadding = lg;
  static const double sectionGap = xxl;
  static const double itemGap = md;
  static const double iconGap = sm;
}

// ═══════════════════════════════════════════════════════════════════════════════
//  APP ELEVATION
//  Material 3 tonal elevation levels
// ═══════════════════════════════════════════════════════════════════════════════

class AppElevation {
  AppElevation._();

  static const double level0 = 0;
  static const double level1 = 1;
  static const double level2 = 3;
  static const double level3 = 6;
  static const double level4 = 8;
  static const double level5 = 12;
}

// ═══════════════════════════════════════════════════════════════════════════════
//  APP DURATIONS
//  Standardised animation timing
// ═══════════════════════════════════════════════════════════════════════════════

class AppDurations {
  AppDurations._();

  static const Duration instant = Duration(milliseconds: 50);
  static const Duration fast = Duration(milliseconds: 150);
  static const Duration standard = Duration(milliseconds: 250);
  static const Duration medium = Duration(milliseconds: 350);
  static const Duration slow = Duration(milliseconds: 500);
  static const Duration slower = Duration(milliseconds: 700);
}

// ═══════════════════════════════════════════════════════════════════════════════
//  APP THEME
//  Full Material 3 light + dark ThemeData
// ═══════════════════════════════════════════════════════════════════════════════

class AppTheme {
  AppTheme._();

  // ── Color Schemes ───────────────────────────────────────────────────────────

  static const ColorScheme _lightColorScheme = ColorScheme(
    brightness: Brightness.light,

    primary: AppColors.primary,
    onPrimary: AppColors.onPrimary,
    primaryContainer: AppColors.primaryContainer,
    onPrimaryContainer: AppColors.onPrimaryContainer,

    secondary: AppColors.secondary,
    onSecondary: AppColors.onSecondary,
    secondaryContainer: AppColors.secondaryContainer,
    onSecondaryContainer: AppColors.onSecondaryContainer,

    tertiary: AppColors.tertiary,
    onTertiary: AppColors.onTertiary,
    tertiaryContainer: AppColors.tertiaryContainer,
    onTertiaryContainer: AppColors.onTertiaryContainer,

    error: AppColors.error,
    onError: AppColors.onError,
    errorContainer: AppColors.errorContainer,
    onErrorContainer: AppColors.onErrorContainer,

    surface: AppColors.surface,
    onSurface: AppColors.onSurface,
    surfaceContainerLowest: AppColors.surfaceContainerLowest,
    surfaceContainerLow: AppColors.surfaceContainerLow,
    surfaceContainer: AppColors.surfaceContainer,
    surfaceContainerHigh: AppColors.surfaceContainerHigh,
    surfaceContainerHighest: AppColors.surfaceContainerHighest,
    onSurfaceVariant: AppColors.onSurfaceVariant,

    outline: AppColors.outline,
    outlineVariant: AppColors.outlineVariant,
    shadow: AppColors.shadow,
    scrim: AppColors.scrim,
    inverseSurface: AppColors.inverseSurface,
    onInverseSurface: AppColors.onInverseSurface,
    inversePrimary: AppColors.inversePrimary,
  );

  static const ColorScheme _darkColorScheme = ColorScheme(
    brightness: Brightness.dark,

    primary: AppColors.primaryDark,
    onPrimary: AppColors.onPrimaryDark,
    primaryContainer: AppColors.primaryContainerDark,
    onPrimaryContainer: AppColors.onPrimaryContainerDark,

    secondary: AppColors.secondaryDark,
    onSecondary: AppColors.onSecondaryDark,
    secondaryContainer: AppColors.secondaryContainerDark,
    onSecondaryContainer: AppColors.onSecondaryContainerDark,

    tertiary: AppColors.tertiaryDark,
    onTertiary: AppColors.onTertiaryDark,
    tertiaryContainer: AppColors.tertiaryContainerDark,
    onTertiaryContainer: AppColors.onTertiaryContainerDark,

    error: AppColors.errorDark,
    onError: AppColors.onErrorDark,
    errorContainer: AppColors.errorContainerDark,
    onErrorContainer: AppColors.onErrorContainerDark,

    surface: AppColors.surfaceDark,
    onSurface: AppColors.onSurfaceDark,
    surfaceContainerLowest: AppColors.surfaceContainerLowestDark,
    surfaceContainerLow: AppColors.surfaceContainerLowDark,
    surfaceContainer: AppColors.surfaceContainerDark,
    surfaceContainerHigh: AppColors.surfaceContainerHighDark,
    surfaceContainerHighest: AppColors.surfaceContainerHighestDark,
    onSurfaceVariant: AppColors.onSurfaceVariantDark,

    outline: AppColors.outlineDark,
    outlineVariant: AppColors.outlineVariantDark,
    shadow: AppColors.shadow,
    scrim: AppColors.scrim,
    inverseSurface: AppColors.inverseSurfaceDark,
    onInverseSurface: AppColors.onInverseSurfaceDark,
    inversePrimary: AppColors.inversePrimaryDark,
  );

  // ── Shared helper builders ───────────────────────────────────────────────────

  static InputDecorationTheme _buildInputDecorationTheme(ColorScheme cs) =>
      InputDecorationTheme(
        filled: true,
        fillColor: cs.surfaceContainerHighest.withOpacity(0.38),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.md,
        ),
        border: OutlineInputBorder(
          borderRadius: AppShapes.medium,
          borderSide: BorderSide(color: cs.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: AppShapes.medium,
          borderSide: BorderSide(color: cs.outline.withOpacity(0.5)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppShapes.medium,
          borderSide: BorderSide(color: cs.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: AppShapes.medium,
          borderSide: BorderSide(color: cs.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: AppShapes.medium,
          borderSide: BorderSide(color: cs.error, width: 2),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: AppShapes.medium,
          borderSide: BorderSide(color: cs.onSurface.withOpacity(0.12)),
        ),
        labelStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
          color: cs.onSurfaceVariant,
          fontWeight: FontWeight.w500,
        ),
        floatingLabelStyle: AppTextStyles.textTheme.bodySmall?.copyWith(
          color: cs.primary,
          fontWeight: FontWeight.w600,
        ),
        hintStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
          color: cs.onSurfaceVariant.withOpacity(0.6),
        ),
        errorStyle: AppTextStyles.textTheme.bodySmall?.copyWith(
          color: cs.error,
        ),
        helperStyle: AppTextStyles.textTheme.bodySmall?.copyWith(
          color: cs.onSurfaceVariant,
        ),
        prefixIconColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.focused)) return cs.primary;
          if (states.contains(WidgetState.error)) return cs.error;
          return cs.onSurfaceVariant;
        }),
        suffixIconColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.focused)) return cs.primary;
          if (states.contains(WidgetState.error)) return cs.error;
          return cs.onSurfaceVariant;
        }),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        alignLabelWithHint: true,
      );

  // ── LIGHT THEME ─────────────────────────────────────────────────────────────

  static ThemeData get light {
    const cs = _lightColorScheme;
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: cs,
      textTheme: AppTextStyles.textTheme.apply(
        bodyColor: cs.onSurface,
        displayColor: cs.onSurface,
      ),

      // ── Scaffold ───────────────────────────
      scaffoldBackgroundColor: cs.surface,

      // ── AppBar ─────────────────────────────
      appBarTheme: AppBarTheme(
        backgroundColor: cs.surface,
        foregroundColor: cs.onSurface,
        surfaceTintColor: cs.surfaceTint,
        shadowColor: Colors.transparent,
        elevation: AppElevation.level0,
        scrolledUnderElevation: AppElevation.level2,
        centerTitle: false,
        titleSpacing: AppSpacing.md,
        titleTextStyle: AppTextStyles.textTheme.titleLarge?.copyWith(
          color: cs.onSurface,
          fontWeight: FontWeight.w700,
        ),
        toolbarTextStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
          color: cs.onSurface,
        ),
        iconTheme: IconThemeData(color: cs.onSurfaceVariant, size: 24),
        actionsIconTheme: IconThemeData(color: cs.onSurfaceVariant, size: 24),
      ),

      // ── Card ───────────────────────────────
      cardTheme: CardThemeData(
        color: cs.surfaceContainerLow,
        surfaceTintColor: cs.surfaceTint,
        shadowColor: cs.shadow.withOpacity(0.06),
        elevation: AppElevation.level1,
        shape: AppShapes.largeShape,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAliasWithSaveLayer,
      ),

      // ── ElevatedButton ─────────────────────
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: cs.surfaceContainerLow,
          foregroundColor: cs.primary,
          shadowColor: cs.shadow.withOpacity(0.12),
          surfaceTintColor: cs.surfaceTint,
          elevation: AppElevation.level1,
          minimumSize: const Size(64, 48),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.sm + AppSpacing.xs,
          ),
          shape: AppShapes.fullShape,
          textStyle: AppTextStyles.textTheme.labelLarge,
          iconSize: 20,
        ),
      ),

      // ── FilledButton ───────────────────────
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: cs.primary,
          foregroundColor: cs.onPrimary,
          disabledBackgroundColor: cs.onSurface.withOpacity(0.12),
          disabledForegroundColor: cs.onSurface.withOpacity(0.38),
          minimumSize: const Size(64, 48),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.sm + AppSpacing.xs,
          ),
          shape: AppShapes.fullShape,
          textStyle: AppTextStyles.textTheme.labelLarge,
          iconSize: 20,
        ),
      ),

      // ── OutlinedButton ─────────────────────
      outlinedButtonTheme: OutlinedButtonThemeData(
        style:
            OutlinedButton.styleFrom(
              foregroundColor: cs.primary,
              minimumSize: const Size(64, 48),
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.sm + AppSpacing.xs,
              ),
              shape: AppShapes.fullShape,
              side: BorderSide(color: cs.outline, width: 1.5),
              textStyle: AppTextStyles.textTheme.labelLarge,
              iconSize: 20,
            ).copyWith(
              side: WidgetStateBorderSide.resolveWith((states) {
                if (states.contains(WidgetState.focused) ||
                    states.contains(WidgetState.hovered)) {
                  return BorderSide(color: cs.primary, width: 1.5);
                }
                if (states.contains(WidgetState.disabled)) {
                  return BorderSide(color: cs.onSurface.withOpacity(0.12));
                }
                return BorderSide(color: cs.outline, width: 1.5);
              }),
            ),
      ),

      // ── TextButton ─────────────────────────
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: cs.primary,
          minimumSize: const Size(48, 40),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.md,
            vertical: AppSpacing.sm,
          ),
          shape: AppShapes.fullShape,
          textStyle: AppTextStyles.textTheme.labelLarge,
          iconSize: 20,
        ),
      ),

      // ── IconButton ─────────────────────────
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor: cs.onSurfaceVariant,
          minimumSize: const Size(40, 40),
          padding: const EdgeInsets.all(AppSpacing.sm),
          shape: AppShapes.fullShape,
          iconSize: 24,
        ),
      ),

      // ── FloatingActionButton ───────────────
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: cs.primaryContainer,
        foregroundColor: cs.onPrimaryContainer,
        elevation: AppElevation.level3,
        focusElevation: AppElevation.level3,
        hoverElevation: AppElevation.level4,
        highlightElevation: AppElevation.level3,
        shape: AppShapes.largeShape,
        extendedPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        extendedTextStyle: AppTextStyles.textTheme.labelLarge,
        iconSize: 24,
      ),

      // ── TextField / TextFormField ───────────
      inputDecorationTheme: _buildInputDecorationTheme(cs),

      // ── Chip ───────────────────────────────
      chipTheme: ChipThemeData(
        backgroundColor: cs.surfaceContainerLow,
        selectedColor: cs.secondaryContainer,
        disabledColor: cs.onSurface.withOpacity(0.12),
        deleteIconColor: cs.onSurfaceVariant,
        labelStyle: AppTextStyles.textTheme.labelMedium?.copyWith(
          color: cs.onSurfaceVariant,
        ),
        secondaryLabelStyle: AppTextStyles.textTheme.labelMedium?.copyWith(
          color: cs.onSecondaryContainer,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm,
          vertical: AppSpacing.xs,
        ),
        labelPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.xs),
        shape: AppShapes.smallShape,
        side: BorderSide(color: cs.outlineVariant),
        elevation: AppElevation.level0,
        pressElevation: AppElevation.level1,
        iconTheme: IconThemeData(color: cs.onSurfaceVariant, size: 18),
        checkmarkColor: cs.onSecondaryContainer,
        showCheckmark: true,
      ),

      // ── BottomNavigationBar ────────────────
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: cs.surfaceContainer,
        selectedItemColor: cs.primary,
        unselectedItemColor: cs.onSurfaceVariant,
        selectedLabelStyle: AppTextStyles.textTheme.labelSmall?.copyWith(
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: AppTextStyles.textTheme.labelSmall,
        type: BottomNavigationBarType.fixed,
        elevation: AppElevation.level2,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      ),

      // ── NavigationBar (M3) ─────────────────
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: cs.surfaceContainer,
        surfaceTintColor: cs.surfaceTint,
        shadowColor: cs.shadow.withOpacity(0.08),
        indicatorColor: cs.secondaryContainer,
        indicatorShape: AppShapes.fullShape,
        elevation: AppElevation.level2,
        height: 80,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return IconThemeData(color: cs.onSecondaryContainer, size: 24);
          }
          return IconThemeData(color: cs.onSurfaceVariant, size: 24);
        }),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppTextStyles.textTheme.labelMedium?.copyWith(
              color: cs.onSurface,
              fontWeight: FontWeight.w700,
            );
          }
          return AppTextStyles.textTheme.labelMedium?.copyWith(
            color: cs.onSurfaceVariant,
          );
        }),
      ),

      // ── NavigationDrawer ───────────────────
      navigationDrawerTheme: NavigationDrawerThemeData(
        backgroundColor: cs.surfaceContainerLow,
        surfaceTintColor: cs.surfaceTint,
        elevation: AppElevation.level1,
        indicatorColor: cs.secondaryContainer,
        indicatorShape: AppShapes.fullShape,
        tileHeight: 56,
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppTextStyles.textTheme.labelLarge?.copyWith(
              color: cs.onSecondaryContainer,
            );
          }
          return AppTextStyles.textTheme.labelLarge?.copyWith(
            color: cs.onSurfaceVariant,
          );
        }),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return IconThemeData(color: cs.onSecondaryContainer, size: 24);
          }
          return IconThemeData(color: cs.onSurfaceVariant, size: 24);
        }),
      ),

      // ── BottomSheet ────────────────────────
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: cs.surfaceContainerLow,
        surfaceTintColor: cs.surfaceTint,
        modalBackgroundColor: cs.surfaceContainerLow,
        modalElevation: AppElevation.level1,
        elevation: AppElevation.level1,
        shape: const RoundedRectangleBorder(borderRadius: AppShapes.topLarge),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        dragHandleColor: cs.onSurfaceVariant.withOpacity(0.4),
        dragHandleSize: const Size(32, 4),
        showDragHandle: true,
        constraints: const BoxConstraints(maxWidth: 640),
      ),

      // ── Dialog ─────────────────────────────
      dialogTheme: DialogThemeData(
        backgroundColor: cs.surfaceContainerHigh,
        surfaceTintColor: cs.surfaceTint,
        shadowColor: cs.shadow.withOpacity(0.16),
        elevation: AppElevation.level3,
        alignment: Alignment.center,
        shape: AppShapes.extraLargeShape,
        titleTextStyle: AppTextStyles.textTheme.headlineSmall?.copyWith(
          color: cs.onSurface,
        ),
        contentTextStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
          color: cs.onSurfaceVariant,
          height: 1.6,
        ),
        actionsPadding: const EdgeInsets.fromLTRB(
          AppSpacing.lg,
          AppSpacing.xs,
          AppSpacing.lg,
          AppSpacing.lg,
        ),
        insetPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.xxl,
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
      ),

      // ── SnackBar ───────────────────────────
      snackBarTheme: SnackBarThemeData(
        backgroundColor: cs.inverseSurface,
        contentTextStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
          color: cs.onInverseSurface,
        ),
        actionTextColor: cs.inversePrimary,
        disabledActionTextColor: cs.onInverseSurface.withOpacity(0.38),
        shape: AppShapes.smallShape,
        behavior: SnackBarBehavior.floating,
        elevation: AppElevation.level3,
        insetPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.sm,
        ),
        showCloseIcon: false,
        closeIconColor: cs.onInverseSurface,
      ),

      // ── Checkbox ───────────────────────────
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return cs.primary;
          if (states.contains(WidgetState.disabled)) {
            return cs.onSurface.withOpacity(0.38);
          }
          return Colors.transparent;
        }),
        checkColor: WidgetStateProperty.all(cs.onPrimary),
        overlayColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.pressed)) {
            return cs.primary.withOpacity(0.12);
          }
          if (states.contains(WidgetState.hovered)) {
            return cs.onSurface.withOpacity(0.08);
          }
          return Colors.transparent;
        }),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        side: WidgetStateBorderSide.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return BorderSide(color: cs.primary, width: 2);
          }
          if (states.contains(WidgetState.disabled)) {
            return BorderSide(color: cs.onSurface.withOpacity(0.38), width: 2);
          }
          return BorderSide(color: cs.outline, width: 2);
        }),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        splashRadius: 20,
        visualDensity: VisualDensity.standard,
      ),

      // ── Radio ──────────────────────────────
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return cs.primary;
          if (states.contains(WidgetState.disabled)) {
            return cs.onSurface.withOpacity(0.38);
          }
          return cs.outline;
        }),
        overlayColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.pressed)) {
            return cs.primary.withOpacity(0.12);
          }
          if (states.contains(WidgetState.hovered)) {
            return cs.onSurface.withOpacity(0.08);
          }
          return Colors.transparent;
        }),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        splashRadius: 20,
        visualDensity: VisualDensity.standard,
      ),

      // ── Switch ─────────────────────────────
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return states.contains(WidgetState.selected)
                ? cs.surface
                : cs.onSurface.withOpacity(0.38);
          }
          if (states.contains(WidgetState.selected)) return cs.onPrimary;
          return cs.outline;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return states.contains(WidgetState.selected)
                ? cs.onSurface.withOpacity(0.12)
                : cs.surfaceContainerHighest;
          }
          if (states.contains(WidgetState.selected)) return cs.primary;
          return cs.surfaceContainerHighest;
        }),
        trackOutlineColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return Colors.transparent;
          return cs.outline;
        }),
        overlayColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.pressed)) {
            return states.contains(WidgetState.selected)
                ? cs.primary.withOpacity(0.12)
                : cs.onSurface.withOpacity(0.12);
          }
          if (states.contains(WidgetState.hovered)) {
            return cs.onSurface.withOpacity(0.08);
          }
          return Colors.transparent;
        }),
        splashRadius: 20,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),

      // ── Slider ─────────────────────────────
      sliderTheme: SliderThemeData(
        activeTrackColor: cs.primary,
        inactiveTrackColor: cs.primaryContainer,
        disabledActiveTrackColor: cs.onSurface.withOpacity(0.38),
        disabledInactiveTrackColor: cs.onSurface.withOpacity(0.12),
        thumbColor: cs.primary,
        disabledThumbColor: cs.onSurface.withOpacity(0.38),
        overlayColor: cs.primary.withOpacity(0.12),
        valueIndicatorColor: cs.primary,
        valueIndicatorTextStyle: AppTextStyles.textTheme.labelMedium?.copyWith(
          color: cs.onPrimary,
        ),
        activeTickMarkColor: cs.primaryContainer,
        inactiveTickMarkColor: cs.primary,
        trackHeight: 4,
        thumbShape: const RoundSliderThumbShape(),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 20),
        valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
        showValueIndicator: ShowValueIndicator.onlyForDiscrete,
        trackShape: const RoundedRectSliderTrackShape(),
        rangeTrackShape: const RoundedRectRangeSliderTrackShape(),
      ),

      // ── ProgressIndicator ──────────────────
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: cs.primary,
        linearTrackColor: cs.primaryContainer,
        circularTrackColor: cs.primaryContainer,
        linearMinHeight: 4,
        borderRadius: AppShapes.full,
        refreshBackgroundColor: cs.surfaceContainerLow,
      ),

      // ── ListTile ───────────────────────────
      listTileTheme: ListTileThemeData(
        tileColor: Colors.transparent,
        selectedTileColor: cs.secondaryContainer.withOpacity(0.5),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.xs,
        ),
        horizontalTitleGap: AppSpacing.md,
        minLeadingWidth: 24,
        minVerticalPadding: AppSpacing.sm,
        iconColor: cs.onSurfaceVariant,
        textColor: cs.onSurface,
        selectedColor: cs.onSecondaryContainer,
        titleTextStyle: AppTextStyles.textTheme.bodyLarge?.copyWith(
          color: cs.onSurface,
        ),
        subtitleTextStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
          color: cs.onSurfaceVariant,
        ),
        leadingAndTrailingTextStyle: AppTextStyles.textTheme.labelSmall
            ?.copyWith(color: cs.onSurfaceVariant),
        shape: AppShapes.mediumShape,
        enableFeedback: true,
        dense: false,
        isThreeLine: false,
        visualDensity: VisualDensity.standard,
      ),

      // ── Divider ────────────────────────────
      dividerTheme: DividerThemeData(
        color: cs.outlineVariant,
        thickness: 1,
        space: 1,
        indent: 0,
        endIndent: 0,
      ),

      // ── TabBar ─────────────────────────────
      tabBarTheme: TabBarThemeData(
        labelColor: cs.primary,
        unselectedLabelColor: cs.onSurfaceVariant,
        indicatorColor: cs.primary,
        labelStyle: AppTextStyles.textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: AppTextStyles.textTheme.titleSmall,
        indicatorSize: TabBarIndicatorSize.label,
        dividerColor: cs.outlineVariant,
        splashBorderRadius: AppShapes.small,
        overlayColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.pressed)) {
            return cs.primary.withOpacity(0.12);
          }
          if (states.contains(WidgetState.hovered)) {
            return cs.primary.withOpacity(0.08);
          }
          return Colors.transparent;
        }),
        tabAlignment: TabAlignment.start,
      ),

      // ── Tooltip ────────────────────────────
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: cs.inverseSurface,
          borderRadius: AppShapes.extraSmall,
        ),
        textStyle: AppTextStyles.textTheme.bodySmall?.copyWith(
          color: cs.onInverseSurface,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm,
          vertical: AppSpacing.xs,
        ),
        margin: const EdgeInsets.all(AppSpacing.xs),
        preferBelow: true,
        enableFeedback: true,
        showDuration: const Duration(seconds: 3),
        waitDuration: const Duration(milliseconds: 500),
      ),

      // ── PopupMenu ──────────────────────────
      popupMenuTheme: PopupMenuThemeData(
        color: cs.surfaceContainer,
        surfaceTintColor: cs.surfaceTint,
        shadowColor: cs.shadow.withOpacity(0.16),
        shape: AppShapes.mediumShape,
        elevation: AppElevation.level2,
        textStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
          color: cs.onSurface,
        ),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return AppTextStyles.textTheme.bodyMedium?.copyWith(
              color: cs.onSurface.withOpacity(0.38),
            );
          }
          return AppTextStyles.textTheme.bodyMedium?.copyWith(
            color: cs.onSurface,
          );
        }),
        iconColor: cs.onSurfaceVariant,
        menuPadding: const EdgeInsets.symmetric(vertical: AppSpacing.xs),
        mouseCursor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return SystemMouseCursors.forbidden;
          }
          return SystemMouseCursors.click;
        }),
        enableFeedback: true,
        position: PopupMenuPosition.over,
      ),

      // ── DatePicker ─────────────────────────
      datePickerTheme: DatePickerThemeData(
        backgroundColor: cs.surfaceContainerHigh,
        surfaceTintColor: cs.surfaceTint,
        elevation: AppElevation.level3,
        shadowColor: cs.shadow.withOpacity(0.16),
        shape: AppShapes.extraLargeShape,
        headerBackgroundColor: cs.primaryContainer,
        headerForegroundColor: cs.onPrimaryContainer,
        headerHelpStyle: AppTextStyles.textTheme.labelSmall?.copyWith(
          color: cs.onPrimaryContainer,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
        ),
        headerHeadlineStyle: AppTextStyles.textTheme.headlineLarge?.copyWith(
          color: cs.onPrimaryContainer,
        ),
        weekdayStyle: AppTextStyles.textTheme.bodySmall?.copyWith(
          color: cs.onSurfaceVariant,
          fontWeight: FontWeight.w700,
        ),
        dayStyle: AppTextStyles.textTheme.bodySmall?.copyWith(
          color: cs.onSurface,
        ),
        dayForegroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return cs.onPrimary;
          if (states.contains(WidgetState.disabled)) {
            return cs.onSurface.withOpacity(0.38);
          }
          return cs.onSurface;
        }),
        dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return cs.primary;
          return Colors.transparent;
        }),
        dayOverlayColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.pressed)) {
            return cs.primary.withOpacity(0.12);
          }
          if (states.contains(WidgetState.hovered)) {
            return cs.onSurface.withOpacity(0.08);
          }
          return Colors.transparent;
        }),
        todayForegroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return cs.onPrimary;
          return cs.primary;
        }),
        todayBorder: BorderSide(color: cs.primary, width: 1.5),
        yearStyle: AppTextStyles.textTheme.bodyLarge?.copyWith(
          color: cs.onSurface,
        ),
        cancelButtonStyle: TextButton.styleFrom(
          foregroundColor: cs.primary,
          textStyle: AppTextStyles.textTheme.labelLarge,
        ),
        confirmButtonStyle: FilledButton.styleFrom(
          backgroundColor: cs.primary,
          foregroundColor: cs.onPrimary,
          textStyle: AppTextStyles.textTheme.labelLarge,
        ),
      ),

      // ── TimePicker ─────────────────────────
      timePickerTheme: TimePickerThemeData(
        backgroundColor: cs.surfaceContainerHigh,
        elevation: AppElevation.level3,
        shape: AppShapes.extraLargeShape,
        hourMinuteShape: AppShapes.mediumShape,
        dayPeriodShape: AppShapes.fullShape,
        dialBackgroundColor: cs.surfaceContainerHighest,
        dialHandColor: cs.primary,
        dialTextColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return cs.onPrimary;
          return cs.onSurface;
        }),
        dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return cs.onTertiaryContainer;
          }
          return cs.onSurfaceVariant;
        }),
        hourMinuteColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return cs.primaryContainer;
          }
          return cs.surfaceContainerHighest;
        }),
        hourMinuteTextColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return cs.onPrimaryContainer;
          }
          return cs.onSurface;
        }),
        hourMinuteTextStyle: AppTextStyles.textTheme.displayMedium,
        helpTextStyle: AppTextStyles.textTheme.labelSmall?.copyWith(
          color: cs.onSurfaceVariant,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
        ),
        cancelButtonStyle: TextButton.styleFrom(foregroundColor: cs.primary),
        confirmButtonStyle: FilledButton.styleFrom(
          backgroundColor: cs.primary,
          foregroundColor: cs.onPrimary,
        ),
      ),

      // ── Icon ───────────────────────────────
      iconTheme: IconThemeData(color: cs.onSurface, size: 24),
      primaryIconTheme: IconThemeData(color: cs.onPrimary, size: 24),

      // ── Badge ──────────────────────────────
      badgeTheme: BadgeThemeData(
        backgroundColor: cs.error,
        textColor: cs.onError,
        smallSize: 6,
        largeSize: 16,
        textStyle: AppTextStyles.textTheme.labelSmall?.copyWith(
          color: cs.onError,
          fontSize: 10,
        ),
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xs),
        alignment: AlignmentDirectional.topEnd,
      ),

      // ── SegmentedButton ────────────────────
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: SegmentedButton.styleFrom(
          backgroundColor: cs.surface,
          foregroundColor: cs.onSurface,
          selectedBackgroundColor: cs.secondaryContainer,
          selectedForegroundColor: cs.onSecondaryContainer,
          disabledBackgroundColor: cs.onSurface.withOpacity(0.12),
          disabledForegroundColor: cs.onSurface.withOpacity(0.38),
          side: BorderSide(color: cs.outline),
          shape: AppShapes.fullShape,
          textStyle: AppTextStyles.textTheme.labelLarge,
          iconSize: 18,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.md,
            vertical: AppSpacing.sm,
          ),
          minimumSize: const Size(64, 40),
        ),
      ),

      // ── SearchBar ──────────────────────────
      searchBarTheme: SearchBarThemeData(
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.focused)) {
            return cs.surfaceContainerHigh;
          }
          return cs.surfaceContainerLow;
        }),
        elevation: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.focused)) return AppElevation.level0;
          return AppElevation.level1;
        }),
        shadowColor: WidgetStateProperty.all(cs.shadow.withOpacity(0.08)),
        surfaceTintColor: WidgetStateProperty.all(cs.surfaceTint),
        overlayColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.hovered)) {
            return cs.onSurface.withOpacity(0.08);
          }
          return Colors.transparent;
        }),
        side: WidgetStateBorderSide.resolveWith((states) {
          if (states.contains(WidgetState.focused)) {
            return BorderSide(color: cs.primary, width: 2);
          }
          return BorderSide.none;
        }),
        shape: WidgetStateProperty.all(AppShapes.fullShape),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(horizontal: AppSpacing.md),
        ),
        textStyle: WidgetStateProperty.all(
          AppTextStyles.textTheme.bodyLarge?.copyWith(color: cs.onSurface),
        ),
        hintStyle: WidgetStateProperty.all(
          AppTextStyles.textTheme.bodyLarge?.copyWith(
            color: cs.onSurfaceVariant,
          ),
        ),
        textCapitalization: TextCapitalization.none,
        constraints: const BoxConstraints(minHeight: 56),
      ),

      // ── Misc ───────────────────────────────
      visualDensity: VisualDensity.adaptivePlatformDensity,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      splashFactory: InkSparkle.splashFactory,
      pageTransitionsTheme: const PageTransitionsTheme(),
    );
  }

  // ── DARK THEME ──────────────────────────────────────────────────────────────

  static ThemeData get dark {
    const cs = _darkColorScheme;
    return light.copyWith(
      brightness: Brightness.dark,
      colorScheme: cs,
      scaffoldBackgroundColor: cs.surface,
      textTheme: AppTextStyles.textTheme.apply(
        bodyColor: cs.onSurface,
        displayColor: cs.onSurface,
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: cs.surface,
        foregroundColor: cs.onSurface,
        surfaceTintColor: cs.surfaceTint,
        shadowColor: Colors.transparent,
        elevation: AppElevation.level0,
        scrolledUnderElevation: AppElevation.level2,
        centerTitle: false,
        titleSpacing: AppSpacing.md,
        titleTextStyle: AppTextStyles.textTheme.titleLarge?.copyWith(
          color: cs.onSurface,
          fontWeight: FontWeight.w700,
        ),
        toolbarTextStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
          color: cs.onSurface,
        ),
        iconTheme: IconThemeData(color: cs.onSurfaceVariant, size: 24),
        actionsIconTheme: IconThemeData(color: cs.onSurfaceVariant, size: 24),
      ),

      cardTheme: CardThemeData(
        color: cs.surfaceContainerLow,
        surfaceTintColor: cs.surfaceTint,
        shadowColor: Colors.black.withOpacity(0.3),
        elevation: AppElevation.level1,
        shape: AppShapes.largeShape,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAliasWithSaveLayer,
      ),

      inputDecorationTheme: _buildInputDecorationTheme(cs),

      chipTheme: ChipThemeData(
        backgroundColor: cs.surfaceContainerLow,
        selectedColor: cs.secondaryContainer,
        disabledColor: cs.onSurface.withOpacity(0.12),
        deleteIconColor: cs.onSurfaceVariant,
        labelStyle: AppTextStyles.textTheme.labelMedium?.copyWith(
          color: cs.onSurfaceVariant,
        ),
        secondaryLabelStyle: AppTextStyles.textTheme.labelMedium?.copyWith(
          color: cs.onSecondaryContainer,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm,
          vertical: AppSpacing.xs,
        ),
        labelPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.xs),
        shape: AppShapes.smallShape,
        side: BorderSide(color: cs.outlineVariant),
        elevation: AppElevation.level0,
        pressElevation: AppElevation.level1,
        iconTheme: IconThemeData(color: cs.onSurfaceVariant, size: 18),
        checkmarkColor: cs.onSecondaryContainer,
        showCheckmark: true,
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: cs.surfaceContainer,
        selectedItemColor: cs.primary,
        unselectedItemColor: cs.onSurfaceVariant,
        selectedLabelStyle: AppTextStyles.textTheme.labelSmall?.copyWith(
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: AppTextStyles.textTheme.labelSmall,
        type: BottomNavigationBarType.fixed,
        elevation: AppElevation.level2,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),

      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: cs.surfaceContainer,
        surfaceTintColor: cs.surfaceTint,
        indicatorColor: cs.secondaryContainer,
        indicatorShape: AppShapes.fullShape,
        elevation: AppElevation.level2,
        height: 80,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return IconThemeData(color: cs.onSecondaryContainer, size: 24);
          }
          return IconThemeData(color: cs.onSurfaceVariant, size: 24);
        }),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppTextStyles.textTheme.labelMedium?.copyWith(
              color: cs.onSurface,
              fontWeight: FontWeight.w700,
            );
          }
          return AppTextStyles.textTheme.labelMedium?.copyWith(
            color: cs.onSurfaceVariant,
          );
        }),
      ),

      navigationDrawerTheme: NavigationDrawerThemeData(
        backgroundColor: cs.surfaceContainerLow,
        surfaceTintColor: cs.surfaceTint,
        elevation: AppElevation.level1,
        indicatorColor: cs.secondaryContainer,
        indicatorShape: AppShapes.fullShape,
        tileHeight: 56,
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppTextStyles.textTheme.labelLarge?.copyWith(
              color: cs.onSecondaryContainer,
            );
          }
          return AppTextStyles.textTheme.labelLarge?.copyWith(
            color: cs.onSurfaceVariant,
          );
        }),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return IconThemeData(color: cs.onSecondaryContainer, size: 24);
          }
          return IconThemeData(color: cs.onSurfaceVariant, size: 24);
        }),
      ),

      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: cs.surfaceContainerLow,
        surfaceTintColor: cs.surfaceTint,
        modalBackgroundColor: cs.surfaceContainerLow,
        modalElevation: AppElevation.level1,
        elevation: AppElevation.level1,
        shape: const RoundedRectangleBorder(borderRadius: AppShapes.topLarge),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        dragHandleColor: cs.onSurfaceVariant.withOpacity(0.4),
        dragHandleSize: const Size(32, 4),
        showDragHandle: true,
      ),

      dialogTheme: DialogThemeData(
        backgroundColor: cs.surfaceContainerHigh,
        surfaceTintColor: cs.surfaceTint,
        elevation: AppElevation.level3,
        shape: AppShapes.extraLargeShape,
        titleTextStyle: AppTextStyles.textTheme.headlineSmall?.copyWith(
          color: cs.onSurface,
        ),
        contentTextStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
          color: cs.onSurfaceVariant,
          height: 1.6,
        ),
        actionsPadding: const EdgeInsets.fromLTRB(
          AppSpacing.lg,
          AppSpacing.xs,
          AppSpacing.lg,
          AppSpacing.lg,
        ),
        insetPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.xxl,
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
      ),

      snackBarTheme: SnackBarThemeData(
        backgroundColor: cs.inverseSurface,
        contentTextStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
          color: cs.onInverseSurface,
        ),
        actionTextColor: cs.inversePrimary,
        shape: AppShapes.smallShape,
        behavior: SnackBarBehavior.floating,
        elevation: AppElevation.level3,
        insetPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.sm,
        ),
        closeIconColor: cs.onInverseSurface,
      ),

      dividerTheme: DividerThemeData(
        color: cs.outlineVariant,
        thickness: 1,
        space: 1,
      ),

      listTileTheme: ListTileThemeData(
        tileColor: Colors.transparent,
        selectedTileColor: cs.secondaryContainer.withOpacity(0.5),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.xs,
        ),
        iconColor: cs.onSurfaceVariant,
        textColor: cs.onSurface,
        selectedColor: cs.onSecondaryContainer,
        titleTextStyle: AppTextStyles.textTheme.bodyLarge?.copyWith(
          color: cs.onSurface,
        ),
        subtitleTextStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
          color: cs.onSurfaceVariant,
        ),
        shape: AppShapes.mediumShape,
      ),

      tabBarTheme: TabBarThemeData(
        labelColor: cs.primary,
        unselectedLabelColor: cs.onSurfaceVariant,
        indicatorColor: cs.primary,
        labelStyle: AppTextStyles.textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: AppTextStyles.textTheme.titleSmall,
        dividerColor: cs.outlineVariant,
        tabAlignment: TabAlignment.start,
      ),

      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: cs.inverseSurface,
          borderRadius: AppShapes.extraSmall,
        ),
        textStyle: AppTextStyles.textTheme.bodySmall?.copyWith(
          color: cs.onInverseSurface,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm,
          vertical: AppSpacing.xs,
        ),
      ),

      popupMenuTheme: PopupMenuThemeData(
        color: cs.surfaceContainer,
        surfaceTintColor: cs.surfaceTint,
        shape: AppShapes.mediumShape,
        elevation: AppElevation.level2,
        textStyle: AppTextStyles.textTheme.bodyMedium?.copyWith(
          color: cs.onSurface,
        ),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return AppTextStyles.textTheme.bodyMedium?.copyWith(
              color: cs.onSurface.withOpacity(0.38),
            );
          }
          return AppTextStyles.textTheme.bodyMedium?.copyWith(
            color: cs.onSurface,
          );
        }),
        iconColor: cs.onSurfaceVariant,
        menuPadding: const EdgeInsets.symmetric(vertical: AppSpacing.xs),
      ),

      datePickerTheme: DatePickerThemeData(
        backgroundColor: cs.surfaceContainerHigh,
        elevation: AppElevation.level3,
        shape: AppShapes.extraLargeShape,
        headerBackgroundColor: cs.primaryContainer,
        headerForegroundColor: cs.onPrimaryContainer,
        headerHelpStyle: AppTextStyles.textTheme.labelSmall?.copyWith(
          color: cs.onPrimaryContainer,
          fontWeight: FontWeight.w700,
        ),
        headerHeadlineStyle: AppTextStyles.textTheme.headlineLarge?.copyWith(
          color: cs.onPrimaryContainer,
        ),
        dayStyle: AppTextStyles.textTheme.bodySmall?.copyWith(
          color: cs.onSurface,
        ),
        dayForegroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return cs.onPrimary;
          if (states.contains(WidgetState.disabled)) {
            return cs.onSurface.withOpacity(0.38);
          }
          return cs.onSurface;
        }),
        dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return cs.primary;
          return Colors.transparent;
        }),
        todayForegroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return cs.onPrimary;
          return cs.primary;
        }),
        todayBorder: BorderSide(color: cs.primary, width: 1.5),
        cancelButtonStyle: TextButton.styleFrom(foregroundColor: cs.primary),
        confirmButtonStyle: FilledButton.styleFrom(
          backgroundColor: cs.primary,
          foregroundColor: cs.onPrimary,
        ),
      ),

      iconTheme: IconThemeData(color: cs.onSurface, size: 24),
      primaryIconTheme: IconThemeData(color: cs.onPrimary, size: 24),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════════
//  BUILD CONTEXT EXTENSIONS
//  Ergonomic theme access throughout the widget tree
// ═══════════════════════════════════════════════════════════════════════════════

extension AppThemeContext on BuildContext {
  /// The resolved [ThemeData] for this context.
  ThemeData get theme => Theme.of(this);

  /// The resolved [ColorScheme] for this context.
  ColorScheme get colors => Theme.of(this).colorScheme;

  /// The resolved [TextTheme] for this context.
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Whether the current theme is dark mode.
  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  /// Whether the current theme is light mode.
  bool get isLight => Theme.of(this).brightness == Brightness.light;

  /// The primary color from the current color scheme.
  Color get primaryColor => Theme.of(this).colorScheme.primary;

  /// The surface color from the current color scheme.
  Color get surfaceColor => Theme.of(this).colorScheme.surface;

  /// The error color from the current color scheme.
  Color get errorColor => Theme.of(this).colorScheme.error;

  /// Semantic success color — resolves to light or dark variant automatically.
  Color get successColor => isDark ? AppColors.successDark : AppColors.success;

  /// Semantic warning color — resolves to light or dark variant automatically.
  Color get warningColor => isDark ? AppColors.warningDark : AppColors.warning;

  /// Semantic info color — resolves to light or dark variant automatically.
  Color get infoColor => isDark ? AppColors.infoDark : AppColors.info;

  /// Semantic success container color.
  Color get successContainerColor =>
      isDark ? AppColors.successContainerDark : AppColors.successContainer;

  /// Semantic warning container color.
  Color get warningContainerColor =>
      isDark ? AppColors.warningContainerDark : AppColors.warningContainer;

  /// Semantic info container color.
  Color get infoContainerColor =>
      isDark ? AppColors.infoContainerDark : AppColors.infoContainer;

  /// On-color for success container.
  Color get onSuccessContainerColor =>
      isDark ? AppColors.onSuccessContainerDark : AppColors.onSuccessContainer;

  /// On-color for warning container.
  Color get onWarningContainerColor =>
      isDark ? AppColors.onWarningContainerDark : AppColors.onWarningContainer;

  /// On-color for info container.
  Color get onInfoContainerColor =>
      isDark ? AppColors.onInfoContainerDark : AppColors.onInfoContainer;
}

// ── Semantic color extension on ColorScheme ─────────────────────────────────
/// Adds semantic colours (success, warning, info) directly to [ColorScheme]
/// so they participate in the same API as the standard M3 roles.
extension AppColorSchemeExtension on ColorScheme {
  Color get success =>
      brightness == Brightness.dark ? AppColors.successDark : AppColors.success;

  Color get successContainer => brightness == Brightness.dark
      ? AppColors.successContainerDark
      : AppColors.successContainer;

  Color get onSuccess => brightness == Brightness.dark
      ? AppColors.onSuccessDark
      : AppColors.onSuccess;

  Color get onSuccessContainer => brightness == Brightness.dark
      ? AppColors.onSuccessContainerDark
      : AppColors.onSuccessContainer;

  Color get warning =>
      brightness == Brightness.dark ? AppColors.warningDark : AppColors.warning;

  Color get warningContainer => brightness == Brightness.dark
      ? AppColors.warningContainerDark
      : AppColors.warningContainer;

  Color get onWarning => brightness == Brightness.dark
      ? AppColors.onWarningDark
      : AppColors.onWarning;

  Color get onWarningContainer => brightness == Brightness.dark
      ? AppColors.onWarningContainerDark
      : AppColors.onWarningContainer;

  Color get info =>
      brightness == Brightness.dark ? AppColors.infoDark : AppColors.info;

  Color get infoContainer => brightness == Brightness.dark
      ? AppColors.infoContainerDark
      : AppColors.infoContainer;

  Color get onInfo =>
      brightness == Brightness.dark ? AppColors.onInfoDark : AppColors.onInfo;

  Color get onInfoContainer => brightness == Brightness.dark
      ? AppColors.onInfoContainerDark
      : AppColors.onInfoContainer;

  Color get surfaceTint => primary.withOpacity(0.08);
}
